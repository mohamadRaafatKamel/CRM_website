<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\Admin;
use App\Models\City;
use App\Models\Country;
use App\Models\DoctorInfo;
use App\Models\DoctorWorkDay;
use App\Models\Governorate;
use App\Models\Role;
use App\Models\Specialty;
use App\Models\User;
use App\Models\DocSpecialty;
use App\Models\Log;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function index()
    {
        if(! Role::havePremission(['user_all']))
            return redirect()->route('admin.dashboard');

        $users = User::select()->where('quick','!=',1)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All User", 'type' => '0', 'sidename'=>"all_user"];
        return view('admin.user.index', compact('users','info'));
    }
    public function indexPatent()
    {
        if(! Role::havePremission(['user_patent']))
            return redirect()->route('admin.dashboard');

        $users = User::select()->where('type',1)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Patent", 'type' => '1', 'sidename'=>"all_patent"];
        return view('admin.user.index', compact('users','info'));
    }
    public function indexDoctor()
    {
        if(! Role::havePremission(['user_doctor']))
            return redirect()->route('admin.dashboard');

        $users = User::select()->where('type',2)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Doctor", 'type' => '2', 'sidename'=>"all_doctor"];
        return view('admin.user.index', compact('users','info'));
    }
    
    public function indexNurse()
    {
        if(! Role::havePremission(['user_nurse']))
            return redirect()->route('admin.dashboard');

        $users = User::select()->where('type',4)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Nurse", 'type' => '4', 'sidename'=>"all_nurse"];
        return view('admin.user.index', compact('users','info'));
    }

    public function indexDriver()
    {
        if(! Role::havePremission(['user_driver']))
            return redirect()->route('admin.dashboard');

        $users = User::select()->where('type',5)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Driver", 'type' => '5', 'sidename'=>"all_driver"];
        return view('admin.user.index', compact('users','info'));
    }

    public function view($id)
    {
        if(! Role::havePremission(['user_patent','user_all','user_doctor','user_nurse','user_driver']))
            return redirect()->route('admin.dashboard');

        $specialtis = Specialty::select()->General()->get();
        $mainSpecialtis = Specialty::select()->Main()->get();
        $countrys = Country::select()->get();
        $governorates = Governorate::select()->get();
        $user = User::select()->find($id);
        if(!$user){
            return redirect()->route('admin.user')->with(['error'=>"غير موجود"]);
        }
        // get doctor data
        $doctor = DoctorInfo::select()->where('user_id',$id)->first();
        if(!isset($doctor->id)){
            $doctor = DoctorInfo::select()->find(0);
        }
        // time work
        $timeWork = [];
        $docWorks = DoctorWorkDay::select()->where('user_id',$id)->get();
        foreach ($docWorks as $docWork){
            $timeWork[$docWork->day] = 1;
            $timeWork[$docWork->day.'f'] = $docWork->time_from;
            $timeWork[$docWork->day.'t'] = $docWork->time_to;
        }
        // Main Spec
        $mainSpecial = [];
        $docSpes = DocSpecialty::select('specialty_id')->where('user_id',$id)->get();
        foreach($docSpes as $dd){
            $mainSpecial[] = $dd['specialty_id'];
        }
        return view('admin.user.view',compact('user','specialtis','mainSpecial','mainSpecialtis','doctor','countrys','governorates','timeWork'));
    }

    public function update($id, UserRequest $request)
    {
        if(! Role::havePremission(['user_patent','user_all','user_doctor','user_nurse','user_driver']))
            return redirect()->route('admin.dashboard');

        try {
            $user = User::select()->find($id);
            if (!$user) {
                return redirect()->route('admin.user')->with(['error' => '  غير موجوده']);
            }
            if(isset($request->btn)){
                
                if($request->btn == "GeneralInfo"){
                    Log::setLog('update','users',$id,"",$request->except(['_token']) );
                    $user->update($request->except('_token'));
                }else
                if ($request->btn == "Doctor") {
                    $mydoctor = $request->post();
                    if (isset($request->cv)) {
                        $image = $request->file('cv');
                        if($image->extension() != "pdf")
                            return redirect()->route('admin.user.view',$id)->with(['error' => __("CV must be PDF file")]);
                        $imageName = "Dr".$user->fname.$user->phone.".".$image->extension();
                        $image->move(public_path('doctorcv'), $imageName);
                        $path = "public/doctorcv/" . $imageName;
                        $mydoctor['cv'] = $path;
                    }
                    if (isset($request->photo)) {
                        $image = $request->file('photo');
                        $imageName = "Dr".$user->fname.$user->phone.".".$image->extension();
                        $image->move(public_path('doctorphoto'), $imageName);
                        $path = "public/doctorphoto/" . $imageName;
                        $mydoctor['photo'] = $path;
                    }
                    // main specialty
                    if (isset($request->mainspecialty)) {
                        DocSpecialty::select()->where('user_id',$id)->delete();
                        foreach ($request->mainspecialty as $main){
                            $docSpc = new DocSpecialty();
                            $docSpc->user_id = $id;
                            $docSpc->specialty_id = $main;
                            $docSpc->save();
                        }
                    }else{
                        DocSpecialty::select()->where('user_id',$id)->delete();
                    }
//                    update or create doctor
//                    DoctorInfo::updateOrCreate
                    $doctor = DoctorInfo::select()->where('user_id',$id)->first();
                    if(isset($doctor->id)){
                        $doctor->update($mydoctor);
                    }else{
                        $mydoctor['user_id'] = $id;
                        DoctorInfo::create($mydoctor);
                    }
                }
            }

            return redirect()->route('admin.user.view',$id)->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.user.view',$id)->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }
    // ?
    public function type($id ,$type)
    {
        try {
            $user = User::select()->find($id);
            if(!$user){
                return redirect()->route('admin.user')->with(['error'=>"غير موجود"]);
            }
            if($type == '1001'){
                $user->update(['verification'=>'1']);
            }else{
                $user->update(['type'=>$type]);
            }
            return redirect()->back();
        }catch (\Exception $ex){
            return redirect()->route('admin.user')->with(['error'=>'يوجد خطء']);
        }
    }

    public function create()
    {
        if(! Role::havePremission(['user_patent','user_all','user_doctor','user_nurse','user_driver']))
            return redirect()->route('admin.dashboard');

        return view('admin.user.create');
    }

    public function store(Request $request)
    {
        if(! Role::havePremission(['user_patent','user_all','user_doctor','user_nurse','user_driver']))
            return redirect()->route('admin.dashboard');

        $request->validate([
            'username' => ['required', 'string', 'max:255'],
            // 'email' => ['email', 'max:255', 'unique:users'],
            'phone' => ['required', 'string', 'max:255', 'unique:users'],
        ]);
        try {

            $user = new User([
                'username' => $request->username,
                'quick' => "1",
                // 'email' => $request->email,
                'phone' => $request->phone,
                'type' => $request->btn,
                'password' => Hash::make(rand(1000000000,9999999999)),
            ]);

            $user->save();
           
            return redirect()->route('admin.user.create',$user -> id)->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.user.create')->with(['error'=>'يوجد خطء']);
        }
    }

/*
    public function destroy($id)
    {

        try {
            $admins = Admin::find($id);
            if (!$admins) {
                return redirect()->route('admin.admin', $id)->with(['error' => '  غير موجوده']);
            }
            $admins->delete();

            return redirect()->route('admin.admin')->with(['success' => 'تم حذف  بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.admin')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }
*/
}
