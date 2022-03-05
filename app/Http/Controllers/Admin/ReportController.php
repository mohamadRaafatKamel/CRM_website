<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Physician;
use App\Models\RequestCall;
use App\Models\Requests;
use App\Models\Role;
use App\Models\Service;
use App\Models\User;
use App\Models\UsersReferral;

class ReportController extends Controller
{
    public function indexOut()
    {
        if(! Role::havePremission(['report_view']))
            return redirect()->route('admin.dashboard');
        $requests = Requests::selection()->where('type',2)->where('status_cc',4)->paginate(PAGINATION_COUNT);
        
        if(count($requests) > 0){
            foreach($requests as $request){
                // phone
                if($request->phone2 != ""){
                    $request->phone .= ", ". $request->phone2;
                }
                // covid19
                if($request->covid19 == 0){
                    $request->covid19 = "No";
                }elseif($request->covid19 == 1){
                    $request->covid19 = "Yes";
                }else{
                    $request->covid19 = "_";
                }
                //pay_or_not
                if($request->pay_or_not == 0){
                    $request->pay_or_not = "No";
                }elseif($request->pay_or_not == 1){
                    $request->pay_or_not = "Yes";
                }else{
                    $request->pay_or_not = "_";
                }
                // OPD
                $request -> opd_admin_id = Admin::getAdminNamebyId($request->opd_admin_id );
                // CC
                $request -> cc_admin_id = Admin::getAdminNamebyId($request->cc_admin_id );
                // Doctor
                $request -> doctor_id = User::getDocName($request->doctor_id );
                // Nurse 
                $request -> nurse_id = User::getUserName($request->nurse_id );
                // Physician 
                $request -> physician = Physician::getName($request->physician );
                // Service 
                $request -> service_id = Service::getName($request->service_id );
                // Address
                $addrss = "";
                if(isset($request->apartment)) $addrss .= __('Apartment').": ".$request->apartment.", "; 
                if(isset($request->floor)) $addrss .= __('Floor').": ".$request->floor.", ";
                if(isset($request->land_mark)) $addrss .= __('Land Mark').": ".$request->land_mark.", ";
                if(isset($request->adress)) $addrss .= $request->adress.", ";
                if(isset($request->city_id)) $addrss .= $request->city_id;
                $request->adress = $addrss;
                // Referral
                $usersReferrals= [];
                if(isset($request->user_id)){
                    $usersReferrals = UsersReferral::getReferralsName($request->user_id);
                }
                // Calls
                $usersCalls= [];
                if(isset($request->id)){
                    $usersCalls = RequestCall::getCallsTime($request->id);
                }
            }
            
            
        }
        return view('admin.report.indexout', compact('requests','usersReferrals','usersCalls'));
    }

}
