<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\Admin;
use App\Models\RequestCall;
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
        if(isset($_GET['req'])) $req=$_GET['req']; else $req=0;
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $myorder = Requests::select()->find($req);
        $calls = RequestCall::select()->where('request_id',$req)->get();

        return view('admin.request.createcc',compact('users','calls','governorates','citys','specialtys','serves','myorder'));
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

    public function store(Request $request)
    {
        try {
            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);
            $request->request->add(['cc_admin_id' =>  Auth::user()->id]);
            Requests::create($request->except(['_token']));
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
        $requests = Requests::selection()->where('type',1)->paginate(PAGINATION_COUNT);
        return view('admin.request.indexem', compact('requests'));
    }


    //  IN 
    public function indexIN()
    {
        $requests = Requests::selection()->where('type',3)->where('status_cc',4)->paginate(PAGINATION_COUNT);
        return view('admin.request.indexin', compact('requests'));
    }

    public function createIN($req)
    {
        $myorder = Requests::select()->find($req);
        if (!isset($myorder->id)) {
            return redirect()->route('admin.request.in')->with(['error' => '  غير موجوده']);
        }
        $doctors = User::select()->doctor()->Verification()->get();
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $calls = RequestCall::select()->where('request_id',$req)->get();
        
        return view('admin.request.createin',compact('users','calls','governorates','citys','specialtys','serves','myorder','doctors'));
    }

    public function updateIN(Request $request, $id)
    {
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

            if (!$request->has('whatapp'))
                $request->request->add(['whatapp' => 0]);
            if (!$request->has('whatapp2'))
                $request->request->add(['whatapp2' => 0]);

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
            return redirect()->route('admin.request.create.in')->with(['error'=>'يوجد خطء']);
        }
    }

    public function statusIN($id, $type)
    {
        try{
            $data = Requests::find($id);
            if (!$data) {
                return redirect()->route('admin.request.in')->with(['error' => '  غير موجوده']);
            }
            $data->update(['status_in_out' => $type ]);
            return redirect()->route('admin.request.in')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.request.create.in')->with(['error'=>'يوجد خطء']);
        }
    }

    //  OUT 
    public function indexOut()
    {
        $requests = Requests::selection()->where('type',2)->where('status_cc',4)->paginate(PAGINATION_COUNT);
        return view('admin.request.indexout', compact('requests'));
    }

    public function createOut($req)
    {
        $myorder = Requests::select()->find($req);
        if (!isset($myorder->id)) {
            return redirect()->route('admin.request.out')->with(['error' => '  غير موجوده']);
        }
        $doctors = User::select()->doctor()->Verification()->get();
        $nurses = User::select()->nurse()->get();
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();
        $calls = RequestCall::select()->where('request_id',$req)->get();
        
        return view('admin.request.createout',compact('users','calls','governorates','citys','specialtys','serves','myorder','doctors','nurses'));
    }

    public function updateOut(Request $request, $id)
    {
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
            return redirect()->route('admin.request.create.out')->with(['error'=>'يوجد خطء']);
        }
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

    // public function getUserInfo($id = 0){
    //     // get records from database
    //     if($id!=0){
    //         $arr = User::select()->find($id);
    //     }else{
    //         $arr['price'] = 0;
    //     }
    //     echo json_encode($arr);
    //     exit;
    // }

}
