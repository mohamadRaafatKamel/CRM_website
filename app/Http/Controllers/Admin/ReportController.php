<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Physician;
use App\Models\ReferalCat;
use App\Models\Referral;
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
                    $usersReferrals = $this->reportReferral(UsersReferral::getReferral($request->user_id));
                }
                $request -> status_cc = $usersReferrals;
                // dd($request -> status_cc);

                // Referral Category
                $cats = [
                    "Doctor" => "Doctor",
                    "Other" => "Other"
                ];
                $allCats= ReferalCat::select('id', 'name')->get();
                foreach($allCats as $allCat){
                    $cats[$allCat->id] = $allCat->name;
                }
            }
            
            
        }
        return view('admin.report.indexout', compact('requests','usersReferrals','cats'));
    }

    public function reportReferral($Referrals)
    {
        $cats = [
            "Doctor" => "",
            "Other" => ""
        ];
        if(count($Referrals) > 0){
            $allCats= ReferalCat::select('id', 'name')->get();
            foreach($allCats as $allCat){
                $cats[$allCat->id] = "";
            }
            foreach($Referrals as $Referral){
                $x = explode("_", $Referral);
                if($x[0] == "doc"){
                    $cats['Doctor'] .= User::getDocName($x[1]).";";
                }elseif($x[0] == "ref"){
                    $myref = Referral::select('id', 'name_ar','cat_id')->find($x[1]);
                    if(isset($myref->id)){
                        if(isset($myref->cat_id)){
                            $cats[$myref->cat_id] .= $myref->name_ar.";";
                        }else{
                            $cats['Other'] .= $myref->name_ar.";";
                        }
                    }
                }
            }
        }
        return $cats;
    }

}
