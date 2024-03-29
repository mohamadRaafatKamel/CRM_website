<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\EmergancyRequest;
use App\Http\Requests\BookServicesRequest;
use App\Http\Requests\JoinUsRequest;
use App\Http\Requests\VisitHomeRequest;
use App\Mail\joinus;
use App\Mail\requestMail;
use App\Models\CompanyInfo;
use App\Models\DoctorInfo;
use App\Models\DoctorWorkDay;
use App\Models\Order;
use App\Models\Requests;
use App\Models\Role;
use App\Models\Setting;
use App\Models\User;
use Dotenv\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{


    public function SliderImg()
    {
        $slider = [];
        $allsliders = Setting::select()->where('name', 'LIKE', "sliderImage%")->get();
        foreach ($allsliders as $allslider) {
            $slider[$allslider->name] = $allslider->value;
        }
        return response()->json([
            'data'=>[
                'slider_1' => (isset($slider['sliderImage1']))? $slider['sliderImage1'] : "",
                'slider_2' => (isset($slider['sliderImage2']))? $slider['sliderImage2'] : "",
                'slider_3' => (isset($slider['sliderImage3']))? $slider['sliderImage3'] : "",
            ],
            'message'=>"success"
        ],200);
    }

    public function SocialLinks()
    {
        $link = [
            'FaceBook'=>'',
            'Twitter'=>'',
            'LinkedIn'=>'',
        ];
        $fb = Setting::select()->where('name', "FaceBook")->first();
        if(isset($fb->value))
            $link['FaceBook']=$fb->value;

        $tw = Setting::select()->where('name', "Twitter")->first();
        if(isset($tw->value))
            $link['Twitter']=$tw->value;

        $kin = Setting::select()->where('name', "LinkedIn")->first();
        if(isset($kin->value))
            $link['LinkedIn']=$kin->value;

        return response()->json([
            'data'=>[
                'FaceBook' => $link['FaceBook'],
                'Twitter' => $link['Twitter'],
                'LinkedIn' => $link['LinkedIn'],
            ],
            'message'=>"success"
        ],200);
    }

    public function callmeEmergency(EmergancyRequest $request)
    {
        try {
            $req = new Requests();
            if(! isset($request->created_by)){
                if (Auth::guard('api')->check()) {
                    $req->created_by = "WebUser";
                }else
                    $req->created_by = "WebGuest";
            }else{
                $req->created_by = $request->created_by;
            }

            if (Auth::guard('api')->check()) {
                $req->user_id = Auth::guard('api')->user()->id;
            }
            $req->phone = $request->phone;
            $req->specialty_id = $request->specialty_id;
            $req->fullname = $request->fullname;
            $req->type = '1';
            $req->save();

            $this->requestMail($request, "Emergency");

            return response()->json([ 'data'=>['success' => "1", 'message'=>"success"] ],200);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error", 'message'=>"Error"] ],400);
        }
    }

    public function callmeHomeVisit(VisitHomeRequest $request)  // inPatient Serves
    {
        try {
            $req = new Requests();
            if(! isset($request->created_by)){
                if (Auth::guard('api')->check()) {
                    $req->created_by = "WebUser";
                }else
                    $req->created_by = "WebGuest";
            }else{
                $req->created_by = $request->created_by;
            }

            if (Auth::guard('api')->check()) {
                $req->user_id = Auth::guard('api')->user()->id;
            }
            $req->governorate_id = $request->governorate_id;
            $req->city_id = $request->city_id;
            $req->adress = $request->adress;
            $req->phone = $request->phone;
            $req->service_id = $request->service_id;
            $req->specialty_id = $request->specialty_id ;
            $req->visit_time_day = $request->visit_time_day;
            $req->visit_time_from = $request->visit_time_from;
            $req->visit_time_to = $request->visit_time_to;
            $req->fullname = $request->fullname;
            $req->type = '2';
            $req->save();

            $this->requestMail($request, "CallCenter");
            return response()->json([ 'data'=>['success' => "1", 'message'=>"Success"] ], 200);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error", 'message'=>"Error"] ], 400);
        }
    }

    public function BookServices(BookServicesRequest $request)  // outPatient Serves
    {
        try {
            $req = new Requests();
            if(! isset($request->created_by)){
                if (Auth::guard('api')->check()) {
                    $req->created_by = "WebUser";
                }else
                    $req->created_by = "WebGuest";
            }else{
                $req->created_by = $request->created_by;
            }

            if (Auth::guard('api')->check()) {
                $req->user_id = Auth::guard('api')->user()->id;
            }
            
            $req->governorate_id = $request->governorate_id;
            $req->city_id = $request->city_id;
            $req->adress = $request->adress;
            $req->phone = $request->phone;
            $req->service_id = $request->service_id;
            $req->specialty_id = $request->specialty_id;
            $req->visit_time_day = $request->visit_time_day;
            $req->visit_time_from = $request->visit_time_from;
            $req->visit_time_to = $request->visit_time_to;
            $req->fullname = $request->fullname;
            $req->type = '3';
            $req->save();
            
            $this->requestMail($request, "CallCenter");
            return response()->json([ 'data'=>['success' => "1", 'message'=>"Success"] ], 200);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error", 'message'=>"Error"] ], 400);
        }
    }

    public function joinUs(JoinUsRequest $request)  // join us
    {
        try {
            // Check mail
            $mailTo ="it@care-hub.net";
            $setting = Setting::select()->where('name',"JoinUs")->first();
            if(isset($setting->value)){
                $testMail = $setting->value ;
                if (strpos($testMail, '@') !== false) {
                    $mailTo = $setting->value ;
                }
            } 
            // Check fils
            if(isset($request['attachment'])){
                $request->request->add(['Real_Path' => $request['attachment']->getRealPath() ]);
                $request->request->add(['att_as' =>  $request['attachment']->getClientOriginalName() ]);
                $request->request->add(['att_mime' =>  $request['attachment']->getClientMimeType() ]);
            }
                        
            Mail::To($mailTo)->send(new joinus($request->post()));
            
            return response()->json([ 'data'=>['success' => "1", 'message'=>"Success"] ], 200);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error", 'message'=>"Error"] ], 400);
        }
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
            return response()->json([ 'data'=>['success' => "1", 'message'=>"Success"] ], 200);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Email Error", 'message'=>"Error"] ], 400);
        }
    }

    
    // Not for API /////////////////////////////////////////////////////////////////////////////////////////////////////

/*
    public function userInfoUpdate(Request $request)
    {
        try {
            $id = Auth::user()->id;
            $user = User::select()->find($id);
            if (isset($request->btn)) {
                if ($request->btn == "GeneralInfo") {
                    $user->update($request->except('_token'));
                } else if ($request->btn == "Doctor") {
                    $mydoctor = $request->post();
                    if (isset($request->cv)) {
                        $image = $request->file('cv');
                        if ($image->extension() != "pdf")
                            return redirect()->route('admin.user.view', $id)->with(['error' => __("CV must be PDF file")]);
                        $imageName = "Dr" . $user->fname . $user->phone . "." . $image->extension();
                        $image->move(public_path('doctorcv'), $imageName);
                        $path = "public/doctorcv/" . $imageName;
                        $mydoctor['cv'] = $path;
                    }
                    if (isset($request->photo)) {
                        $image = $request->file('photo');
                        $imageName = "Dr" . $user->fname . $user->phone . "." . $image->extension();
                        $image->move(public_path('doctorphoto'), $imageName);
                        $path = "public/doctorphoto/" . $imageName;
                        $mydoctor['photo'] = $path;
                    }
//                    update or create doctor
//                    DoctorInfo::updateOrCreate
                    $doctor = DoctorInfo::select()->where('user_id', $id)->first();
                    if (isset($doctor->id)) {
                        $doctor->update($mydoctor);
                    } else {
                        $mydoctor['user_id'] = $id;
                        DoctorInfo::create($mydoctor);
                    }

                } else if ($request->btn == "partner") {
                    $myPartner = CompanyInfo::select()->where('user_id', $id)->first();
                    if (isset($myPartner->id)) {
                        $myPartner->update($request->except('_token'));
                    } else {
                        CompanyInfo::create(array_merge($request->except(['_token']), ['user_id' => $id]));
                    }
                } else if ($request->btn == "docWorkTime") {
                    DoctorWorkDay::where('user_id', Auth::user()->id)->delete();
                    $days = $request->day;
                    foreach ($days as $thisday) {
                        $dayFrom = $request->post(strtolower($thisday . '_from'));
                        $dayTo = $request->post(strtolower($thisday . '_to'));
                        $docDay = new DoctorWorkDay();
                        $docDay->user_id = Auth::user()->id;
                        $docDay->day = $thisday;
                        $docDay->time_from = $dayFrom;
                        $docDay->time_to = $dayTo;
                        $docDay->save();
                    }

                }
            }


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

            return redirect()->route('home.user.info', app()->getLocale())->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('home.user.info', app()->getLocale())->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }



    public function DoctorRequest()
    {
        $orders = Requests::select()->where('doctor_id', Auth::user()->id)->whereIn('states',['1','2','3'])->get();
        return view('front.docrequest', compact('orders'));
    }

    public function DocOrderState($lang, $id, $state)
    {
        $data = Requests::select()->find($id);
        if (!isset($data->id)) {
            return redirect()->route('user.doc.request', app()->getLocale());
        }
        $data->update(['states'=>$state]);
        if($state == '29')
            return redirect()->route('user.doc.request', app()->getLocale());
        else
            return redirect()->route('user.view.request', ['language'=>app()->getLocale(),'msg'=>'order','id'=>$id]);
    }
*/

}
