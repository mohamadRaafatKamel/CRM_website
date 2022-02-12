<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\WebSurvay;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\WebSuvayRequest;

class WebSurvayController extends Controller
{
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
    public function store(WebSuvayRequest $request)
    {
        // try{
            $mySurvy = new WebSurvay();
            if (Auth::guard('api')->check()) {
                $mySurvy->user_id = Auth::guard('api')->user()->id;
            }
            $mySurvy->name = $request->name;
            $mySurvy->phone = $request->phone;
            $mySurvy->age = $request->age;
            $mySurvy->opinion_carehub = $request->opinion_carehub;
            $mySurvy->know_carehub = $request->know_carehub;
            $mySurvy->try_carehub = $request->try_carehub;
            $mySurvy->note = $request->note;
            $mySurvy->save();
            return response()->json([ 'data'=>['success' => "1"] ]);
        // } catch (\Exception $ex) {
        //     return response()->json([ 'data'=>['success' => "0", 'error' => "Something Error"] ]);
        // }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\WebSurvay  $webSurvay
     * @return \Illuminate\Http\Response
     */
    public function show(WebSurvay $webSurvay)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\WebSurvay  $webSurvay
     * @return \Illuminate\Http\Response
     */
    public function edit(WebSurvay $webSurvay)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\WebSurvay  $webSurvay
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, WebSurvay $webSurvay)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\WebSurvay  $webSurvay
     * @return \Illuminate\Http\Response
     */
    public function destroy(WebSurvay $webSurvay)
    {
        //
    }
}
