<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ServiceRequest;
use App\Http\Resources\SpecialtyResource;
use App\Models\Specialty;
use Illuminate\Http\Request;

class SpecialtyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return SpecialtyResource::collection(Specialty::all());
    }

    // General Specialty
    public function indexGeneral()
    {
        return SpecialtyResource::collection(Specialty::General()->get());
    }

    // Main Specialty
    public function indexMain()
    {
        return SpecialtyResource::collection(Specialty::Main()->get());
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

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Specialty  $specialty
     * @return \Illuminate\Http\Response
     */
    public function show(Specialty $specialty)
    {
        return new SpecialtyResource($specialty);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Specialty  $specialty
     * @return \Illuminate\Http\Response
     */
    public function edit(Specialty $specialty)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\ServiceRequest  $request
     * @param  \App\Models\Specialty  $specialty
     * @return \Illuminate\Http\Response
     */
    public function update(ServiceRequest $request,Specialty  $specialty)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Specialty  $specialty
     * @return \Illuminate\Http\Response
     */
    public function destroy(Specialty  $specialty)
    {
    }
}
