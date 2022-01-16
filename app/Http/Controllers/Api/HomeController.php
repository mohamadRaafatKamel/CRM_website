<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\EmergancyRequest;
use App\Http\Requests\BookServicesRequest;
use App\Http\Requests\JoinUsRequest;
use App\Http\Requests\VisitHomeRequest;
use App\Http\Resources\UserResource;
use App\Mail\joinus;
use App\Models\CompanyInfo;
use App\Models\DoctorInfo;
use App\Models\DoctorWorkDay;
use App\Models\Order;
use App\Models\Requests;
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
            ]
        ]);
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
            ]
        ]);
    }

    public function callmeEmergency(EmergancyRequest $request)
    {
        try {
            $req = new Requests();
            if (isset($request->user_id)) {
                $req->user_id = $request->user_id;
            }
            $req->phone = $request->phone;
            $req->specialty_id = $request->specialty_id;
            $req->fullname = $request->fullname;
            $req->emergency = '1';
            $req->call_him = '0';
            $req->type = '1';
            $req->save();
            return response()->json([ 'data'=>['success' => "1"] ]);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error"] ]);
        }
    }

    public function callmeHomeVisit(VisitHomeRequest $request)  // inPatient Serves
    {
        try {
            $req = new Requests();
            if (isset($request->user_id)) {
                $req->user_id = $request->user_id;
            }
            $req->governorate_id = $request->governorate_id;
            $req->city_id = $request->city_id;
            $req->adress = $request->adress;
            $req->adress2 = $request->adress2;
            $req->phone = $request->phone;
            $req->service_id = $request->service_id;
            $req->visit_time_day = $request->visit_time_day;
            $req->visit_time_from = $request->visit_time_from;
            $req->visit_time_to = $request->visit_time_to;
            $req->fullname = $request->fullname;
            $req->type = '2';
            $req->save();
            return response()->json([ 'data'=>['success' => "1"] ]);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error"] ]);
        }
    }

    public function BookServices(BookServicesRequest $request)  // outPatient Serves
    {
        try {
            $req = new Requests();
            if (isset($request->user_id)) {
                $req->user_id = $request->user_id;
            }
            $req->governorate_id = $request->governorate_id;
            $req->city_id = $request->city_id;
            $req->adress = $request->adress;
            $req->adress2 = $request->adress2;
            $req->phone = $request->phone;
            $req->service_id = $request->service_id;
            $req->visit_time_day = $request->visit_time_day;
            $req->visit_time_from = $request->visit_time_from;
            $req->visit_time_to = $request->visit_time_to;
            $req->fullname = $request->fullname;
            $req->type = '3';
            $req->save();
            return response()->json([ 'data'=>['success' => "1"] ]);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error"] ]);
        }
    }

    public function joinUs(JoinUsRequest $request)  // join us
    {
        try {
            if(isset($request['attachment'])){
                $request->request->add(['Real_Path' => $request['attachment']->getRealPath() ]);
                $request->request->add(['att_as' =>  $request['attachment']->getClientOriginalName() ]);
                $request->request->add(['att_mime' =>  $request['attachment']->getClientMimeType() ]);
            }
                        
            Mail::To($request->email)->send(new joinus($request->post()));
            
            return response()->json([ 'data'=>['success' => "1"] ]);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error"] ]);
        }
    }

    public function userinfo(Request $request)
    {
        return new UserResource($request);
    }

    public function doctorTimeWork($doctor_id)
    {
        $timeWork = [];
        $doctor = DoctorInfo::select()->where('user_id', $doctor_id)->first();
        if (isset($doctor->id)) {
            $docWorks = DoctorWorkDay::select()->where('user_id', $doctor_id)->get();
            if (isset($docWorks)) {
                foreach ($docWorks as $docWork) {
                    $timeWork[$docWork->day] = 1;
                    $timeWork[$docWork->day . '_from'] = $docWork->time_from;
                    $timeWork[$docWork->day . '_to'] = $docWork->time_to;
                }
                $timeWork = [ 'data'=>['success' => "1", 'time' => $timeWork] ];
            }else
                $timeWork = [ 'data'=>['success' => "0", 'error' => "No any Doctor Work Time"] ];
        }else
            $timeWork = [ 'data'=>['success' => "0", 'error' => "No any Doctor profile"] ];

        return response()->json($timeWork);
    }

    // Not for API /////////////////////////////////////////////////////////////////////////////////////////////////////


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
        $orders = Order::select()->where('doctor_id', Auth::user()->id)->whereIn('states',['1','2','3'])->get();
        return view('front.docrequest', compact('orders'));
    }

    public function DocOrderState($lang, $id, $state)
    {
        $data = Order::select()->find($id);
        if (!isset($data->id)) {
            return redirect()->route('user.doc.request', app()->getLocale());
        }
        $data->update(['states'=>$state]);
        if($state == '29')
            return redirect()->route('user.doc.request', app()->getLocale());
        else
            return redirect()->route('user.view.request', ['language'=>app()->getLocale(),'msg'=>'order','id'=>$id]);
    }


}
