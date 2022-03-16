<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ServiceRequest;
use App\Models\Service;
use App\Http\Resources\ServicesResource;
use Illuminate\Http\Request;

class ServicesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return(ServicesResource::collection(Service::all()) )->response()->setStatusCode(200);
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
     * @param  \App\Http\Requests\ServiceRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ServiceRequest $request)
    {
//        $myServe = new Service();
//        $myServe->name_ar = $request->name_ar;
//        $myServe->name_en = $request->name_en;
//        $myServe->admin_id = $request->admin_id;
//        $myServe->disabled = '0';
//        $myServe->save();
//        return new ServicesResource($myServe);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function show(Service $service)
    {
        return(new ServicesResource($service) )->response()->setStatusCode(200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function edit(Service $service)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\ServiceRequest  $request
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function update(ServiceRequest $request, Service $service)
    {
//        $service->update([
//            'name_ar'=>$request->input('name_ar'),
//            'name_en'=>$request->input('name_en'),
//            'admin_id'=>$request->input('admin_id'),
//            'disabled'=>$request->input('disabled'),
//        ]);
//
//        return new ServicesResource($service);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function destroy(Service $service)
    {
//        $service->delete();
    }
}
