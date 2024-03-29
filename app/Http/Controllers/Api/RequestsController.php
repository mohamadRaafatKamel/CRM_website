<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Requests;
use Illuminate\Http\Request;
use App\Http\Resources\RequestResource;

class RequestsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function userRequest(Request $request)
    {
        $myRequests = Requests::select()->where('user_id', $request->user()->id )->get();
        return(RequestResource::collection($myRequests) )->response()->setStatusCode(200);
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
     * @param  \App\Models\Requests  $requests
     * @return \Illuminate\Http\Response
     */
    public function show(Requests $requests, Request $request)
    {
        if ($requests->user_id == $request->user()->id)
            return(new RequestResource($requests) )->response()->setStatusCode(200);
        else
            return response()->json([ 'data'=>['success' => "0", 'error' => "Not Owner", 'message' => "Error Not Owner"] ], 400);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Requests  $requests
     * @return \Illuminate\Http\Response
     */
    public function edit(Requests $requests)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Requests  $requests
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Requests $requests)
    {
        //
    }

    public function cancelState(Request $request, Requests $requests){
        if ($requests->user_id == $request->user()->id) {
            if ($requests->state != '0'){
                return response()->json([ 'data'=>['success' => "0", 'massage' => "Error can't Updated"] ], 400);
            }
            $requests->update(['state' => '5']);
            return response()->json(['data' => ['success' => "1", 'massage' => "Success Updated"]], 200);
        }else
            return response()->json([ 'data'=>['success' => "0", 'massage' => "Error Not Owner"] ], 400);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Requests  $requests
     * @return \Illuminate\Http\Response
     */
    public function destroy(Requests $requests)
    {
        //
    }
}
