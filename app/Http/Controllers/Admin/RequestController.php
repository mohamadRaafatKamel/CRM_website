<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\Models\Admin;
use App\Models\DoctorInfo;
use App\Models\Requests;
use App\Models\Role;
use App\Models\Specialty;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RequestController extends Controller
{
    public function index()
    {
        // ->orderBy('created_at', 'DESC')
        $requests = Requests::select()->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Request", 'type' => '0'];
        return view('admin.request.index', compact('requests','info'));
    }

    public function indexEmergency()
    {
        $requests = Requests::select()->where([['type','=',1],['call_him','!=',1]])->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Emergency", 'type' => '1'];
        return view('admin.request.index', compact('requests','info'));
    }

    public function indexVisit()
    {
        $requests = Requests::select()->where('type',2)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Visit", 'type' => '2'];
        return view('admin.request.index', compact('requests','info'));
    }

    public function indexBook()
    {
        $requests = Requests::select()->where('type',3)->paginate(PAGINATION_COUNT);
        $info = ['name' => "All Book", 'type' => '3'];
        return view('admin.request.index', compact('requests','info'));
    }

    public function callhim($id)
    {
        try {
            $reqest = Requests::select()->find($id);
            if(!$reqest){
                return redirect()->route('admin.request')->with(['error'=>"غير موجود"]);
            }
            date_default_timezone_set('Africa/Cairo');
            $date = date('Y-m-d H:i:s', time());
            $reqest->update(['call_him'=>'1','call_him_time'=>$date]);
            return redirect()->back();
        }catch (\Exception $ex){
            return redirect()->route('admin.request')->with(['error'=>'يوجد خطء']);
        }
    }
}
