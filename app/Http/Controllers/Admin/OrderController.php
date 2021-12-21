<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AreaRequest;
use App\Models\Area;
use App\Models\City;
use App\Models\Emarh;
use App\Models\Governorate;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Orders;
use App\Models\Product;
use App\Models\PromoCode;
use App\Models\Service;
use App\Models\Specialty;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Twilio\Rest\Client;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::Selection()->paginate(PAGINATION_COUNT);
        return view('admin.order.index', compact('orders'));
    }

    public function create()
    {
        $serves = Service::select()->active()->get();
        $specialtys = Specialty::select()->active()->get();
        $doctors = User::select()->doctor()->get();
        $users = User::select()->get();
        $governorates = Governorate::select()->get();
        $citys = City::select()->get();

        if(isset($_GET['order'])){
            $myorder = Order::select()->find($_GET['order']);
        }else{
            $myorder = Order::select()->find('0');
        }

        return view('admin.order.create',compact('users','doctors','governorates','citys','specialtys','serves','myorder'));
    }

    public function store(Request $request)
    {
        try {

//            if (!$request->has('emergency'))
//                $request->request->add(['emergency' => 0]);
//            if(isset())

            $request->request->add(['admin_id' =>  Auth::user()->id ]);

            if (isset($request->order_id)){
                $dataOrder = Order::find($request->order_id);
                if(isset($dataOrder->id)) {
                    $dataOrder->update($request->except(['_token']));
                    return redirect()->route('admin.order.create')->with(['success' => 'تم الحفظ']);
                }
            }

            Order::create($request->except(['_token']));
            return redirect()->route('admin.order.create')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.order.create')->with(['error'=>'يوجد خطء']);
        }
    }
}
