<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Requests;
use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        return view('admin.dashboard');
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('admin.login');
    }

    static public function notificationShow() 
    {
        $arr = [
            'newCC'=>0,
            'newEM'=>0,
            'newIN'=>0,
            'newOUT'=>0
        ];
        if(Role::havePremission(['request_all'])){
            $newCC = Requests::where('status_cc','=',1)->where('type','!=',1)->count();
            $arr['newCC'] = $newCC;
        }
        if(Role::havePremission(['request_emergency'])){
            $newEM = Requests::where('status_cc','=',1)->where('type','=',1)->count();
            $arr['newEM'] = $newEM;
        }
        if(Role::havePremission(['request_out'])){
            $newOUT = Requests::where('status_cc',4)->where('status_in_out','=',1)->where('type',2)->count();
            $arr['newOUT'] = $newOUT;
        }
        if(Role::havePremission(['request_in'])){
            $newIN = Requests::where('status_cc',4)->where('status_in_out','=',1)->where('type',3)->count();
            $arr['newIN'] = $newIN;
        }
        echo json_encode($arr);
        exit;

    }
}
