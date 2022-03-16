<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Resources\UserResource;
use App\Models\CompanyInfo;
use App\Models\DoctorInfo;
use App\Models\DoctorWorkDay;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{

    public function userinfo(Request $request)
    {
        return(new UserResource($request) )->response()->setStatusCode(200);
    }

    public function doctorTimeWork($doctor_id)
    {
        $timeWork = [];
        $ResponsStatus = 200;
        $doctor = DoctorInfo::select()->where('user_id', $doctor_id)->first();
        if (isset($doctor->id)) {
            $docWorks = DoctorWorkDay::select()->where('user_id', $doctor_id)->get();
            if (isset($docWorks)) {
                foreach ($docWorks as $docWork) {
                    $timeWork[$docWork->day] = 1;
                    $timeWork[$docWork->day . '_from'] = $docWork->time_from;
                    $timeWork[$docWork->day . '_to'] = $docWork->time_to;
                }
                $timeWork = [ 'data'=>['success' => "1", 'message' => "Error Not Owner", 'time' => $timeWork] ];
                $ResponsStatus = 200;
            }else{
                $timeWork = [ 'data'=>['success' => "0", 'message' => "No any Doctor Work Time" , 'error' => "No any Doctor Work Time"] ];
                $ResponsStatus = 400;
            }
        }else{
            $timeWork = [ 'data'=>['success' => "0", 'message' => "No profile for Doctor", 'error' => "No any Doctor profile"] ];
            $ResponsStatus = 400;
        }
        return response()->json($timeWork)->setStatusCode( $ResponsStatus );
    }

    public function updateInfo(Request $request)
    {
        try{
            $user = User::select()->find(Auth::user()->id);
            if (!$user->id) {
                return response()->json([ 'data'=>['success' => "0", 'error' => "Error User Not Found", 'message' => "Error User Not Found"] ], 400);
            }
            $user->update($request->except('_token'));
            return response()->json([ 'data'=>['success' => "1", 'message' => "Success"] ],200);
        } catch (\Exception $ex) {
            return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error", 'message' => "Error"] ], 400);
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}
