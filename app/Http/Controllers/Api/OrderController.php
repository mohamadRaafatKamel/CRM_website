<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\OrderResource;
use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function doctorRequest(Request $request)
    {
        $myOrders = Order::select()->where('user_id', $request->user()->id )->whereIn('states',['1','2','3'])->get();
        return OrderResource::collection($myOrders);
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
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order, Request $request)
    {
        if ($order->user_id == $request->user()->id or $order->doctor_id == $request->user()->id)
            return new OrderResource($order);
        else
            return response()->json([ 'data'=>['success' => "0", 'error' => "Not Owner"] ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    public function cancelState(Request $request, Order $order){
        if ( $order->user_id == $request->user()->id or $order->doctor_id == $request->user()->id ) {
            if ($order->state != '0'){
                return response()->json([ 'data'=>['success' => "0", 'massage' => "can't Updated"] ]);
            }
            $order->update(['state' => '5']);
            return response()->json(['data' => ['success' => "1", 'massage' => "Success Updated"]]);
        }else
            return response()->json([ 'data'=>['success' => "0", 'massage' => "Not Owner"] ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order)
    {
        //
    }
}
