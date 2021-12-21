<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\Admin;
use App\Models\City;
use App\Models\CompanyInfo;
use App\Models\Country;
use App\Models\DoctorInfo;
use App\Models\DoctorWorkDay;
use App\Models\Emarh;
use App\Models\Governorate;
use App\Models\Role;
use App\Models\Specialty;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function index()
    {
        $users = User::select()->paginate(PAGINATION_COUNT);
        $info = ['name' => "All User", 'type' => '0'];
        return view('admin.user.index', compact('users','info'));
    }
    public function indexPatent()
    {
        $users = User::select()->where('type',1)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Patent", 'type' => '1'];
        return view('admin.user.index', compact('users','info'));
    }
    public function indexDoctor()
    {
        $users = User::select()->where('type',2)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Doctor", 'type' => '2'];
        return view('admin.user.index', compact('users','info'));
    }
    public function indexPartner()
    {
        $users = User::select()->where('type',3)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Partner", 'type' => '3'];
        return view('admin.user.index', compact('users','info'));
    }

    public function view($id)
    {
        $specialtis = Specialty::select()->get();
        $countrys = Country::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $user = User::select()->find($id);
        if(!$user){
            return redirect()->route('admin.user')->with(['error'=>"غير موجود"]);
        }
        // get doctor data
        $doctor = DoctorInfo::select()->where('user_id',$id)->first();
        if(!isset($doctor->id)){
            $doctor = DoctorInfo::select()->find(0);
        }
        // get partner data
        $partner = CompanyInfo::select()->where('user_id',$id)->first();
        if(!isset($partner->id)){
            $partner = CompanyInfo::select()->find(0);
        }
        // time work
        $timeWork = [];
        $docWorks = DoctorWorkDay::select()->where('user_id',$id)->get();
        foreach ($docWorks as $docWork){
            $timeWork[$docWork->day] = 1;
            $timeWork[$docWork->day.'f'] = $docWork->time_from;
            $timeWork[$docWork->day.'t'] = $docWork->time_to;
        }

        return view('admin.user.view',compact('user','specialtis','doctor','partner','countrys','governorates','citys','timeWork'));
    }

    public function update($id, UserRequest $request)
    {
        try {
            $user = User::select()->find($id);
            if (!$user) {
                return redirect()->route('admin.user')->with(['error' => '  غير موجوده']);
            }
            if(isset($request->btn)){
                if($request->btn == "GeneralInfo"){
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
//                    update or create doctor
//                    DoctorInfo::updateOrCreate
                    $doctor = DoctorInfo::select()->where('user_id',$id)->first();
                    if(isset($doctor->id)){
                        $doctor->update($mydoctor);
                    }else{
                        $mydoctor['user_id'] = $id;
                        DoctorInfo::create($mydoctor);
                    }

                }else
                if($request->btn == "partner"){
                    $myPartner = CompanyInfo::select()->where('user_id',$id)->first();
                    if(isset($myPartner->id)){
                        $myPartner->update($request->except('_token'));
                    }else{
                        CompanyInfo::create(array_merge($request->except(['_token']),['user_id' => $id]));
                    }
                }
            }

//
//            if(isset($request->permission)){
//                $pass = Hash::make($request->password);
//                unset($request->password);
//                $admins->update(['password'=>$pass]);
//            }
//
//            if(isset($request->name)){
//                $admins->update(['name'=>$request->name]);
//            }
//
//            if(isset($request->email)){
//                $admins->update(['email'=>$request->email]);
//            }

            return redirect()->route('admin.user.view',$id)->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.user.view')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

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
