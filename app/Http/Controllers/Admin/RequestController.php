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
use App\Models\Specialty;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

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

        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $companys = CompanyInfo::select()->get();
        $referrals = Referral::select()->get();
        $myorder = Requests::select()->find($req);
        $calls = RequestCall::select()->where('request_id',$req)->get();

        return view('admin.request.createcc',compact('users','companys','referrals','calls','governorates','citys','specialtys','serves','myorder'));
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
            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

            // Add Referral
            if (!$request->has('referral_id') || $request->referral_id == null ){
                if ($request->has('referral') && $request->referral !=""){
                    $reff = new Referral();
                    $reff->name_ar = $request->referral;
                    $reff->admin_id = Auth::user()->id;
                    $reff->save();
                    $request->request->add(['referral_id' => $reff->id ]);
                }
            }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ($request->has('corporate') && $request->corporate !=""){
                    $corp = new CompanyInfo();
                    $corp->org_name = $request->corporate;
                    $corp->admin_id = Auth::user()->id;
                    $corp->save();
                    $request->request->add(['corporate_id' => $corp->id ]);
                }
            }
             
            $request->request->add(['cc_admin_id' =>  Auth::user()->id]);
            Requests::create($request->except(['_token']));
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

            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

            // Add Referral
            if (!$request->has('referral_id') || $request->referral_id == null ){
                if ($request->has('referral') && $request->referral !=""){
                    $reff = new Referral();
                    $reff->name_ar = $request->referral;
                    $reff->admin_id = Auth::user()->id;
                    $reff->save();
                    $request->request->add(['referral_id' => $reff->id ]);
                }
            }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ($request->has('corporate') && $request->corporate !=""){
                    $corp = new CompanyInfo();
                    $corp->org_name = $request->corporate;
                    $corp->admin_id = Auth::user()->id;
                    $corp->save();
                    $request->request->add(['corporate_id' => $corp->id ]);
                }
            }

            $request->request->add(['cc_admin_id' =>  Auth::user()->id]);
            $data = Requests::find($id);
            if (!$data) {
                return redirect()->route('admin.request.create.cc')->with(['error' => '  غير موجوده']);
            }

            if($request->btn == "done")
                $request->request->add(['status_cc' => 4]);
            elseif($request->btn == "hold")
                $request->request->add(['status_cc' => 2]);
            elseif($request->btn == "cancel")
                $request->request->add(['status_cc' => 5]);

            // add call
            if ($request->has('time') || $request->has('note') ){
                if($request->note != "" || $request->time != ""){
                    $call = new RequestCall();
                    if ($request->has('time')){
                        $call->call_time = $request->time;
                        $request->request->remove('time');
                    }
                    if ($request->has('note')){
                        $call->note = $request->note;
                        $request->request->remove('note');
                    }
                    $call->request_id = $id;
                    $call->department = 1;
                    $call->admin_id  = Auth::user()->id;
                    $call->save();
                }
            }

            $data->update($request->except(['_token']));
            return redirect()->route('admin.request.cc')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.create.cc')->with(['error'=>'يوجد خطء']);
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
        $doctors = User::select()->doctor()->Verification()->get();
        $nurses = User::select()->nurse()->get();
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $companys = CompanyInfo::select()->get();
        $referrals = Referral::select()->get();
        $packages = Package::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $calls = RequestCall::select()->where('request_id',$req)->get();
        $sheets = NurseSheet::select()->where('request_id',$req)->get();
        
        return view('admin.request.createin',compact('users','nurses','sheets','packages','companys','referrals','calls','governorates','citys','specialtys','serves','myorder','doctors'));
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

            // add Nurse Sheet
            if ($request->has('btn') || $request->btn != "nurseSheet" ){
                $sheet = new NurseSheet();
                $sheet->nurse_id = $request->nurse_id;
                $sheet->shift_date = $request->shift_date;
                $sheet->issues = $request->issues;
                $sheet->shift_type = $request->shift_type;
                $sheet->admin_id  = Auth::user()->id;
                $sheet->request_id  = $id;
                $sheet->save();
                return redirect()->route('admin.request.in')->with(['success'=>'تم الحفظ']);
            }

            if($request->btn == "done")
                $request->request->add(['status_in_out' => 4]);
            elseif($request->btn == "hold")
                $request->request->add(['status_in_out' => 2]);
            elseif($request->btn == "cancel")
                $request->request->add(['status_in_out' => 5]);

            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

            // Add Referral
            if (!$request->has('referral_id') || $request->referral_id == null ){
                if ($request->has('referral') && $request->referral !=""){
                    $reff = new Referral();
                    $reff->name_ar = $request->referral;
                    $reff->admin_id = Auth::user()->id;
                    $reff->save();
                    $request->request->add(['referral_id' => $reff->id ]);
                }
            }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ($request->has('corporate') && $request->corporate !=""){
                    $corp = new CompanyInfo();
                    $corp->org_name = $request->corporate;
                    $corp->admin_id = Auth::user()->id;
                    $corp->save();
                    $request->request->add(['corporate_id' => $corp->id ]);
                }
            }

            // Add Package
            if (!$request->has('package_id') || $request->package_id == null ){
                if ($request->has('package') && $request->package !=""){
                    $pack = new Package();
                    $pack->name_ar = $request->package;
                    $pack->admin_id = Auth::user()->id;
                    $pack->save();
                    $request->request->add(['package_id' => $pack->id ]);
                }
            }

             // add call
             if ($request->has('time') || $request->has('note') ){
                if($request->note != "" || $request->time != ""){
                    $call = new RequestCall();
                    if ($request->has('time')){
                        $call->call_time = $request->time;
                        $request->request->remove('time');
                    }
                    if ($request->has('note')){
                        $call->note = $request->note;
                        $request->request->remove('note');
                    }
                    $call->request_id = $id;
                    $call->department = 3;
                    $call->admin_id  = Auth::user()->id;
                    $call->save();
                }
            }

            $request->request->add(['admin_id_in_out' =>  Auth::user()->id]);
            
            $data->update($request->except(['_token']));
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
        $doctors = User::select()->doctor()->Verification()->get();
        $nurses = User::select()->nurse()->get();
        $drivers = User::select()->driver()->get();
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $companys = CompanyInfo::select()->get();
        $referrals = Referral::select()->get();
        $calls = RequestCall::select()->where('request_id',$req)->get();
        
        return view('admin.request.createout',compact('users','drivers','companys','referrals','calls','governorates','citys','specialtys','serves','myorder','doctors','nurses'));
    }

    public function updateOut(Request $request, $id)
    {
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

            if($request->btn == "done")
                $request->request->add(['status_in_out' => 4]);
            elseif($request->btn == "hold")
                $request->request->add(['status_in_out' => 2]);
            elseif($request->btn == "cancel")
                $request->request->add(['status_in_out' => 5]);

            if (!$request->has('covid19'))
                $request->request->add(['covid19' => 0]);
            if (!$request->has('pay_or_not'))
                $request->request->add(['pay_or_not' => 0]);
            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

             // Add Referral
            if (!$request->has('referral_id') || $request->referral_id == null ){
                if ($request->has('referral') && $request->referral !=""){
                    $reff = new Referral();
                    $reff->name_ar = $request->referral;
                    $reff->admin_id = Auth::user()->id;
                    $reff->save();
                    $request->request->add(['referral_id' => $reff->id ]);
                }
            }

            // Add Corporate
            if (!$request->has('corporate_id') || $request->corporate_id == null ){
                if ($request->has('corporate') && $request->corporate !=""){
                    $corp = new CompanyInfo();
                    $corp->org_name = $request->corporate;
                    $corp->admin_id = Auth::user()->id;
                    $corp->save();
                    $request->request->add(['corporate_id' => $corp->id ]);
                }
            }

             // add call
             if ($request->has('time') || $request->has('note') ){
                if($request->note != "" || $request->time != ""){
                    $call = new RequestCall();
                    if ($request->has('time')){
                        $call->call_time = $request->time;
                        $request->request->remove('time');
                    }
                    if ($request->has('note')){
                        $call->note = $request->note;
                        $request->request->remove('note');
                    }
                    $call->request_id = $id;
                    $call->department = 2;
                    $call->admin_id  = Auth::user()->id;
                    $call->save();
                }
            }

            $request->request->add(['admin_id_in_out' =>  Auth::user()->id]);
            
            $data->update($request->except(['_token']));
            return redirect()->route('admin.request.out')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.out')->with(['error'=>'يوجد خطء']);
        }
    }
 
    public function AddUser($name, $phone)
    {
        $user = new User([
            'username' => $name,
            'phone' => $phone,
            'type' => '1',
            'quick' => "1",
            'password' => Hash::make(rand(1000000000,9999999999)),
        ]);
        $user->save();
        return $user->id;
    }

    // JSON
    public function getUserInfo($id = 0){
        // get records from database
        if($id!=0){
            $arr = User::select()->find($id);
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

    // public function getCountReqest($type = 0){
    //     // get records from database
    //     $arr['count'] = Requests::where('type',$type)->count();
    //     echo json_encode($arr);
    //     exit;
    // }

}
