<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\Admin;
use App\Models\DoctorInfo;
use App\Models\Requests;
use App\Models\Role;
use App\Models\City;
use App\Models\DocSpecialty;
use App\Models\Governorate;
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
        $requests = Requests::selection()->paginate(PAGINATION_COUNT);
        return view('admin.request.indexcc', compact('requests'));
    }

    public function createCC()
    {
        (isset($_GET['req']))? $req=$_GET['req']:$req=0 ;
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $myorder = Requests::selection()->find($req);
        return view('admin.request.createcc',compact('users','governorates','citys','specialtys','serves','myorder'));
    }
    public function statusCC($id, $type)
    {
        try{
            $data = Requests::find($id);
            if (!$data) {
                return redirect()->route('admin.request.cc')->with(['error' => '  غير موجوده']);
            }
            $data->update(['status_cc' => $type ]);
            return redirect()->route('admin.request.cc')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.create.cc')->with(['error'=>'يوجد خطء']);
        }
    }
    //  IN 
    public function indexIN()
    {
        $requests = Requests::selection()->paginate(PAGINATION_COUNT);
        return view('admin.request.indexcc', compact('requests'));
    }

    public function createIN()
    {
        (isset($_GET['req']))? $req=$_GET['req']:$req=0 ;
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $myorder = Requests::selection()->find($req);

        return view('admin.request.createcc',compact('users','governorates','citys','specialtys','serves','myorder'));
    }

    // public function create()
    // {
    //     $serves = Service::select()->active()->get();
    //     $specialtys = [];
    //     $doctors = User::select()->doctor()->Verification()->get();
    //     $users = User::select()->get();
    //     $governorates = Governorate::select()->get();
    //     $citys = City::select()->get();
    //     return view('admin.request.createcc');
    // }

    public function store(Request $request)
    {
        try {
            // if (!$request->has('disabled'))
            //     $request->request->add(['disabled' => 1]);

            $request->request->add([
                'cc_admin_id' =>  Auth::user()->id,
                // 'status_cc' => ''
            ]);
            
            Requests::create($request->except(['_token']));

            // if(isset($request->btn))
            //     if($request->btn =="saveAndNew")
            //         return redirect()->route('admin.service.create')->with(['success'=>'تم الحفظ']);

            return redirect()->route('admin.request.cc')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.create.cc')->with(['error'=>'يوجد خطء']);
        }
    }

    public function update(Request $request, $id)
    {
        try {

            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

            $request->request->add([
                'cc_admin_id' =>  Auth::user()->id,
                // 'status_cc' => ''
            ]);

            $data = Requests::find($id);
            if (!$data) {
                return redirect()->route('admin.request.create.cc')->with(['error' => '  غير موجوده']);
            }
            $data->update($request->except(['_token']));

            // if(isset($request->btn))
            //     if($request->btn =="saveAndNew")
            //         return redirect()->route('admin.service.create')->with(['success'=>'تم الحفظ']);

            return redirect()->route('admin.request.cc')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.create.cc')->with(['error'=>'يوجد خطء']);
        }
    }

    // public function indexEmergency()
    // {
    //     $requests = Requests::select()->where([['type','=',1],['call_him','!=',1]])->paginate(PAGINATION_COUNT);
    //     $info = ['name' => "All Emergency", 'type' => '1'];
    //     return view('admin.request.index', compact('requests','info'));
    // }

    // public function indexVisit()
    // {
    //     $requests = Requests::select()->where('type',2)->paginate(PAGINATION_COUNT);
    //     $info = ['name' => "All Visit", 'type' => '2'];
    //     return view('admin.request.index', compact('requests','info'));
    // }

    // public function indexBook()
    // {
    //     $requests = Requests::select()->where('type',3)->paginate(PAGINATION_COUNT);
    //     $info = ['name' => "All Book", 'type' => '3'];
    //     return view('admin.request.index', compact('requests','info'));
    // }

    // public function callhim($id)
    // {
    //     try {
    //         $reqest = Requests::select()->find($id);
    //         if(!$reqest){
    //             return redirect()->route('admin.request')->with(['error'=>"غير موجود"]);
    //         }
    //         date_default_timezone_set('Africa/Cairo');
    //         $date = date('Y-m-d H:i:s', time());
    //         $reqest->update(['call_him'=>'1','call_him_time'=>$date]);
    //         return redirect()->back();
    //     }catch (\Exception $ex){
    //         return redirect()->route('admin.request')->with(['error'=>'يوجد خطء']);
    //     }
    // }

    // public function getCountReqest($type = 0){
    //     // get records from database
    //     $arr['count'] = Requests::where('type',$type)->count();
    //     echo json_encode($arr);
    //     exit;
    // }

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

}
