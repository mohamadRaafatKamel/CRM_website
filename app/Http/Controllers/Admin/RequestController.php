<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\Admin;
use App\Models\RequestCall;
use App\Models\Requests;
use App\Models\Role;
use App\Models\City;
use App\Models\CompanyInfo;
use App\Models\Governorate;
use App\Models\NurseSheet;
use App\Models\Package;
use App\Models\Referral;
use App\Models\Service;
use App\Models\Setting;
use App\Models\Specialty;
use App\Models\User;
use App\Mail\requestMail;
use App\Models\Log;
use App\Models\Physician;
use App\Models\UsersReferral;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use phpDocumentor\Reflection\Types\Null_;
use Prophecy\Call\Call;

class RequestController extends Controller
{
    //  CC 
    public function indexCC()
    {
        if(! Role::havePremission(['request_all']))
            return redirect()->route('admin.dashboard');
        $requests = Requests::selection()->paginate(PAGINATION_COUNT);
        return view('admin.request.indexcc', compact('requests'));
    }

    public function createCC()
    {
        if(! Role::havePremission(['request_all','request_emergency']))
            return redirect()->route('admin.dashboard');

        if(isset($_GET['req'])) $req=$_GET['req']; else $req=0;

        date_default_timezone_set('Africa/Cairo');
        $datenaw = date("Y-m-d")."T".date("H:i:s");

        $doctors = User::select()->doctor()->Verification()->get();
        $nurses = User::select()->nurse()->get();
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $companys = CompanyInfo::select()->get();
        $referrals = Referral::select()->get();
        $packages = Package::select()->get();
        $physicians = Physician::select()->get();
        $myorder = Requests::select()->find($req);
        $calls = RequestCall::select()->where('request_id',$req)->get();
        $usersReferrals= [];
        if(isset($myorder->user_id)){
            $usersReferrals = UsersReferral::getReferral($myorder->user_id);
        }
        

        return view('admin.request.createcc',compact('users','usersReferrals','doctors','nurses','companys','referrals','physicians','packages','calls','governorates','citys','specialtys','serves','myorder','datenaw'));
    }

    public function store(Request $request)
    {
        if(! Role::havePremission(['request_all','request_emergency']))
            return redirect()->route('admin.dashboard');

        // Add User
        if (!$request->has('user_id') || $request->user_id == null ){ 
            if ($request->has('phone')){
                $request->validate([
                    'phone'=>"unique:users,phone|required",
                    'fullname'=>"required",
                ]);
                $userID = $this->addUser($request->fullname,$request->phone);
                $request->request->add(['user_id' => $userID ]);
            }
        }

        try {

            if (!$request->has('covid19'))
                $request->request->add(['covid19' => 0]);
            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

            // Add Referral
            if ($request->has('user_id') && $request->has('referral_id') ){
                $referralID = [];
                if ( $request->has('referral')){
                    $referralID[] = $this->AddReferral( $request->referral );
                }
                    UsersReferral::setReferral($request->user_id,array_merge($request->referral_id, $referralID));
             }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ( $request->has('corporate')){
                    $corporateID = $this->AddCorporate( $request->corporate );
                    $request->request->add(['corporate_id' => $corporateID ]);
                }
            }

            // Add Package
            if (!$request->has('package_id') || $request->package_id == null ){
                if ( $request->has('package')){
                    $packageID = $this->AddPackage( $request->package );
                    $request->request->add(['package_id' => $packageID ]);
                }
            }
            
            // Add Physician
            if (!$request->has('physician') || $request->physician == null ){
                if ( $request->has('physician_new')){
                    $phyID = $this->AddPhysician( $request->physician_new );
                    $request->request->add(['physician' => $phyID ]);
                }
            }
             
            $request->request->add(['cc_admin_id' =>  Auth::user()->id]);
            $request->request->add(['status_cc' =>  '2']);
            $req = Requests::create($request->except(['_token']));
            Log::setLog('create','request',$req->id,"","");

            // add call
            if ($request->has('time') || $request->has('note') ){
                if($request->note != "" || $request->time != ""){
                    $this->AddCall($request->time, $request->note, $req->id, '1');
                }
            }

            if($request->btn == "saveAndNew")
                return redirect()->route('admin.request.create.cc',['req'=>$req->id])->with(['success'=>'تم الحفظ']);

            return redirect()->route('admin.request.cc')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.create.cc')->with(['error'=>'يوجد خطء']);
        }
    }

    public function update(Request $request, $id)
    {
        if(! Role::havePremission(['request_all','request_emergency']))
            return redirect()->route('admin.dashboard');

        // Add User
        if (!$request->has('user_id') || $request->user_id == null ){ 
            if ($request->has('phone')){
                $request->validate([
                    'phone'=>"unique:users,phone|required",
                    'fullname'=>"required",
                ]);
                $userID = $this->addUser($request->fullname,$request->phone);
                $request->request->add(['user_id' => $userID ]);
            }
        }

        try {

            if (!$request->has('covid19'))
                $request->request->add(['covid19' => 0]);
            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

            // Add Referral
            if ($request->has('user_id') && $request->has('referral_id') ){
                $referralID = [];
                if ( $request->has('referral')){
                    $referralID[] = $this->AddReferral( $request->referral );
                }
                    UsersReferral::setReferral($request->user_id,array_merge($request->referral_id, $referralID));
             }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ( $request->has('corporate')){
                    $corporateID = $this->AddCorporate( $request->corporate );
                    $request->request->add(['corporate_id' => $corporateID ]);
                    $request->request->remove('corporate');
                }
            }

            // Add Package
            if (!$request->has('package_id') || $request->package_id == null ){
                if ( $request->has('package')){
                    $packageID = $this->AddPackage( $request->package );
                    $request->request->add(['package_id' => $packageID ]);
                    // $request->request->remove('package');
                }
            }

            // Add Physician
            if (!$request->has('physician') || $request->physician == null ){
                if ( $request->has('physician_new')){
                    $phyID = $this->AddPhysician( $request->physician_new );
                    $request->request->add(['physician' => $phyID ]);
                    $request->request->remove('physician_new');
                }
            }

            $request->request->add(['cc_admin_id' =>  Auth::user()->id]);
            $data = Requests::find($id);
            if (!$data) {
                return redirect()->route('admin.request.create.cc')->with(['error' => '  غير موجوده']);
            }

            if($request->btn == "done"){
                $request->request->add(['status_cc' => 4]);
                if($request->type == '2')
                    $this->requestMail($request, "InPatient");
                if($request->type == '3')
                    $this->requestMail($request, "OutPatient");
            }elseif($request->btn == "hold")
                $request->request->add(['status_cc' => 2]);
            elseif($request->btn == "cancel")
                $request->request->add(['status_cc' => 5]);
            elseif($request->btn == "approve")
                $request->request->add(['status_cc' => 6]);

            // add call
            if ($request->has('time') || $request->has('note') ){
                if($request->note != "" || $request->time != ""){
                    $this->AddCall($request->time, $request->note, $id, '1');
                }
            }

            Log::setLog('update','request',$id,"",$request->except(['_token']) );
            $data->update($request->except(['_token']));

            if($request->btn == "saveAndNew")
                return redirect()->route('admin.request.create.cc',['req'=>$id])->with(['success'=>'تم الحفظ']);

            return redirect()->route('admin.request.cc')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.cc')->with(['error'=>'يوجد خطء']);
        }
    }

    //  Em 
    public function indexEm()
    {
        if(! Role::havePremission(['request_emergency']))
            return redirect()->route('admin.dashboard');
        $requests = Requests::selection()->where('type',1)->paginate(PAGINATION_COUNT);
        return view('admin.request.indexem', compact('requests'));
    }

    //  IN 
    public function indexIN()
    {
        if(! Role::havePremission(['request_in']))
            return redirect()->route('admin.dashboard');
        $requests = Requests::selection()->where('type',3)->where('status_cc',4)->paginate(PAGINATION_COUNT);
        return view('admin.request.indexin', compact('requests'));
    }

    public function createIN($req)
    {
        if(! Role::havePremission(['request_in']))
            return redirect()->route('admin.dashboard');

        $myorder = Requests::select()->find($req);
        if (!isset($myorder->id)) {
            return redirect()->route('admin.request.in')->with(['error' => '  غير موجوده']);
        }
        
        // how long stay in
        $long = '';
        if(empty($myorder->Long) ){  
            if(isset($myorder->date_in) && isset($myorder->date_out)){
                $interval = date_diff(date_create($myorder->date_in),date_create($myorder->date_out));
                $long = $interval->days;
                $myorder->update(['Long'=>$long ]);
            }
        }else{
            $long = $myorder->Long;
        }

        date_default_timezone_set('Africa/Cairo');
        $datenaw = date("Y-m-d");

        $doctors = User::select()->doctor()->Verification()->get();
        $nurses = User::select()->nurse()->get();
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $companys = CompanyInfo::select()->get();
        $referrals = Referral::select()->get();
        $packages = Package::select()->get();
        $governorates = Governorate::select()->get();
        $calls = RequestCall::select()->where('request_id',$req)->get();
        $sheets = NurseSheet::select()->where('request_id',$req)->get();
        $usersReferrals= [];
        if(isset($myorder->user_id)){
            $usersReferrals = UsersReferral::getReferral($myorder->user_id);
        }
        
        return view('admin.request.createin',compact('datenaw','long','usersReferrals','users','nurses','sheets','packages','companys','referrals','calls','governorates','specialtys','serves','myorder','doctors'));
    }

    public function updateIN(Request $request, $id)
    {
        if(! Role::havePremission(['request_in']))
            return redirect()->route('admin.dashboard');

        // Add User
        if (!$request->has('user_id') || $request->user_id == null ){ 
            if ($request->has('phone')){
                $request->validate([
                    'phone'=>"unique:users,phone|required",
                    'fullname'=>"required",
                ]);
                $userID = $this->addUser($request->fullname,$request->phone);
                $request->request->add(['user_id' => $userID ]);
            }
        }

        try {
            $data = Requests::find($id);
            if (!$data) {
                return redirect()->route('admin.request.create.in')->with(['error' => '  غير موجوده']);
            }


            if($request->btn == "done")
                $request->request->add(['status_in_out' => 4]);
            elseif($request->btn == "hold")
                $request->request->add(['status_in_out' => 2]);
            elseif($request->btn == "cancel")
                $request->request->add(['status_in_out' => 5]);
            // elseif($request->btn == "approve")
            //     $request->request->add(['status_in_out' => 6]);

            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

            // Add Referral
            if ($request->has('user_id') && $request->has('referral_id') ){
                $referralID = [];
                if ( $request->has('referral')){
                    $referralID[] = $this->AddReferral( $request->referral );
                }
                    UsersReferral::setReferral($request->user_id,array_merge($request->referral_id, $referralID));
             }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ( $request->has('corporate')){
                    $corporateID = $this->AddCorporate( $request->corporate );
                    $request->request->add(['corporate_id' => $corporateID ]);
                }
            }

            // Add Package
            if (!$request->has('package_id') || $request->package_id == null ){
                if ( $request->has('package')){
                    $packageID = $this->AddPackage( $request->package );
                    $request->request->add(['package_id' => $packageID ]);
                }
            }

            // add call
            if ($request->has('time') || $request->has('note') ){
                if($request->note != "" || $request->time != ""){
                    $this->AddCall($request->time, $request->note, $id, '3');
                }
            }

            $request->request->add(['admin_id_in_out' =>  Auth::user()->id]);
            
            Log::setLog('update','request',$id,"",$request->except(['_token']) );

            $data->update($request->except(['_token']));

            if($request->btn == "saveAndNew")
                return redirect()->route('admin.request.create.in',$id)->with(['success'=>'تم الحفظ']);

            return redirect()->route('admin.request.in')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.in')->with(['error'=>'يوجد خطء']);
        }
    }

    //  OUT 
    public function indexOut()
    {
        if(! Role::havePremission(['request_out']))
            return redirect()->route('admin.dashboard');
        $requests = Requests::selection()->where('type',2)->where('status_cc',4)->paginate(PAGINATION_COUNT);
        return view('admin.request.indexout', compact('requests'));
    }

    public function createOut($req)
    {
        if(! Role::havePremission(['request_out']))
            return redirect()->route('admin.dashboard');

        $myorder = Requests::select()->find($req);
        if (!isset($myorder->id)) {
            return redirect()->route('admin.request.out')->with(['error' => '  غير موجوده']);
        }
        $opds = Admin::select()->where('permission', Auth::user()->permission )->get();
        $doctors = User::select()->doctor()->Verification()->get();
        $nurses = User::select()->nurse()->get();
        $drivers = User::select()->driver()->get();
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $physicians = Physician::select()->get();
        $governorates = Governorate::select()->get();
        $companys = CompanyInfo::select()->get();
        $referrals = Referral::select()->get();
        $calls = RequestCall::select()->where('request_id',$req)->get();
        $usersReferrals= [];
        if(isset($myorder->user_id)){
            $usersReferrals = UsersReferral::getReferral($myorder->user_id);
        }
        
        return view('admin.request.createout',compact('users','usersReferrals','opds','drivers','companys','referrals','calls','governorates','physicians','specialtys','serves','myorder','doctors','nurses'));
    }

    public function updateOut(Request $request, $id)
    {
        if(! Role::havePremission(['request_out']))
            return redirect()->route('admin.dashboard');
            
        // Add User
        if (!$request->has('user_id') || $request->user_id == null ){ 
            if ($request->has('phone')){
                $request->validate([
                    'phone'=>"unique:users,phone|required",
                    'fullname'=>"required",
                ]);
                $userID = $this->addUser($request->fullname,$request->phone);
                $request->request->add(['user_id' => $userID ]);
            }
        }

        try {
            $data = Requests::find($id);
            if (!$data) {
                return redirect()->route('admin.request.create.out')->with(['error' => '  غير موجوده']);
            }

            // opd
            if($data->opd_admin_id == null)
                $request->request->add(['opd_admin_id' =>  Auth::user()->id]);

            if($request->btn == "done")
                $request->request->add(['status_in_out' => 4]);
            elseif($request->btn == "hold")
                $request->request->add(['status_in_out' => 2]);
            elseif($request->btn == "cancel")
                $request->request->add(['status_in_out' => 5]);
            // elseif($request->btn == "approve")
            //     $request->request->add(['status_in_out' => 6]);

            if (!$request->has('covid19'))
                $request->request->add(['covid19' => 0]);
            if (!$request->has('pay_or_not'))
                $request->request->add(['pay_or_not' => 0]);
            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

             // Add Referral
             if ($request->has('user_id') && $request->has('referral_id') ){
                $referralID = [];
                if ( $request->has('referral')){
                    $referralID[] = $this->AddReferral( $request->referral );
                }
                    UsersReferral::setReferral($request->user_id,array_merge($request->referral_id, $referralID));
             }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ( $request->has('corporate')){
                    $corporateID = $this->AddCorporate( $request->corporate );
                    $request->request->add(['corporate_id' => $corporateID ]);
                }
            }

            // Add Physician
            if (!$request->has('physician') || $request->physician == null ){
                if ( $request->has('physician_new')){
                    $phyID = $this->AddPhysician( $request->physician_new );
                    $request->request->add(['physician' => $phyID ]);
                }
            }

            // add call
            if ($request->has('time') || $request->has('note') ){
                if($request->note != "" || $request->time != ""){
                    $this->AddCall($request->time, $request->note, $id, '2');
                }
            }

            $request->request->add(['admin_id_in_out' =>  Auth::user()->id]);

            Log::setLog('update','request',$id,"",$request->except(['_token']) );

            $data->update($request->except(['_token']));

            if($request->btn == "saveAndNew")
                return redirect()->route('admin.request.create.out',$id)->with(['success'=>'تم الحفظ']);


            return redirect()->route('admin.request.out')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.out')->with(['error'=>'يوجد خطء']);
        }
    }
 
    //

    private function AddUser($name, $phone)
    {
        $user = new User([
            'username' => $name,
            'phone' => $phone,
            'type' => '1',
            'quick' => "1",
            'password' => Hash::make(rand(1000000000,9999999999)),
        ]);
        $user->save();
        Log::setLog('create','users',$user->id,"","");
        return $user->id;
    }

    private function AddReferral($name)
    {
        if ($name !=""){
            $reff = new Referral();
            $reff->name_ar = $name;
            $reff->admin_id = Auth::user()->id;
            $reff->save();
            Log::setLog('create','referral',$reff->id,"","");
            return $reff->id;
        }
        return null;
    }

    private function AddCorporate($name)
    {
        if ($name !=""){
            $corp = new CompanyInfo();
            $corp->org_name = $name;
            $corp->admin_id = Auth::user()->id;
            $corp->save();
            Log::setLog('create','company_info',$corp->id,"","");
            return $corp->id;
        }
        return null;
    }

    private function AddPackage($name)
    {
        if ($name !=""){
            $pack = new Package();
            $pack->name_ar = $name;
            $pack->admin_id = Auth::user()->id;
            $pack->save();
            Log::setLog('create','package',$pack->id,"","");
            return $pack->id;
        }
        return null;
    }

    private function AddPhysician($name)
    {
        if ($name !=""){
            $phy = new Physician();
            $phy->name = $name;
            $phy->admin_id = Auth::user()->id;
            $phy->save();
            Log::setLog('create','physician',$phy->id,"","");
            return $phy->id;
        }
        return null;
    }

    public function AddCall($time, $note, $id, $depart)
    {
        $call = new RequestCall();
        if ($time){
            $call->call_time = $time;
        }
        if ($note){
            $call->note = $note;
        }
        $call->request_id = $id;
        $call->department = $depart;
        $call->admin_id  = Auth::user()->id;
        $call->save();
        Log::setLog('create','request_call',$call->id,"","");
    }

    public function destroyCall($id)
    {
        if(! Role::havePremission(['request_all','request_emergency','request_out','request_in']))
            return redirect()->route('admin.dashboard');

        try {
            $data = RequestCall::find($id);
            if (!$data) {
                return redirect()->route('admin.dashboard')->with(['error' => '  غير موجوده']);
            }
            Log::setLog('delete','request_call',$id,"","");
            $data->delete();

            return redirect()->back()->with(['success' => 'تم حذف  بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.dashboard')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    public function storeSheet($id, Request $request){
        if(! Role::havePremission(['request_in']))
            return redirect()->route('admin.dashboard');

        $request->validate([
            'shift_date'=>"required",
            'nurse_id'=>"required",
            'shift_type'=>"required",
            // 'issues'=>"required",
        ]);
        
        try {
            $sheet = new NurseSheet();
            $sheet->nurse_id = $request->nurse_id;
            $sheet->shift_date = $request->shift_date;
            $sheet->issues = $request->issues;
            $sheet->shift_type = $request->shift_type;
            $sheet->admin_id  = Auth::user()->id;
            $sheet->request_id  = $id;
            $sheet->save();

            Log::setLog('create','nurse_sheet',$sheet->id,"","");

            return redirect()->route('admin.request.create.in', $id)->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.dashboard')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    public function destroySheet($id){
        if(! Role::havePremission(['request_in']))
            return redirect()->route('admin.dashboard');

        try {
            $data = NurseSheet::find($id);
            if (!$data) {
                return redirect()->route('admin.dashboard')->with(['error' => '  غير موجوده']);
            }
            Log::setLog('delete','nurse_sheet',$id,"","");
            $data->delete();

            return redirect()->back()->with(['success' => 'تم حذف  بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.dashboard')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    // JSON
    public function getUserInfo($id = 0){
        // get records from database
        if($id!=0){
            $arr = User::select('username','address','phone','mobile','gender','code_zone_patient_id','governorate_id','city_id',
                                'land_mark','floor','apartment','whatapp','whatapp2','birth_date','fname')->find($id);
            $arr->fname = UsersReferral::getReferral($id);
        }else{
            $arr['price'] = 0;
        }
        echo json_encode($arr);
        exit;
    }

    public function getCityGevern($id = 0){
        // get records from database
        if($id!=0){
            $arr = City::select('id','city_name_ar')->where('governorate_id',$id)->get();
        }else{
            $arr['price'] = 0;
        }
        echo json_encode($arr);
        exit;
    }

    public function requestMail(Request $request,$depart ="")  // Request Mail
    {
        try {
            // Check mail
            $mailTo ="it@care-hub.net";
            $setting = Setting::select()->where('name', $depart)->first();
            if(isset($setting->value)){
                $testMail = $setting->value ;
                if (strpos($testMail, '@') !== false) {
                    $mailTo = $setting->value ;
                }
            } 
            Mail::To($mailTo)->send(new requestMail($request->post()));
            return response()->json([ 'data'=>['success' => "1"] ]);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Email Error"] ]);
        }
    }

    // public function getCountReqest($type = 0){
    //     // get records from database
    //     $arr['count'] = Requests::where('type',$type)->count();
    //     echo json_encode($arr);
    //     exit;
    // }

}
