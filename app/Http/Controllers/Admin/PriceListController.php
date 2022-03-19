<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Log;
use App\Models\Role;
use App\Models\PriceList;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PriceListController  extends Controller
{
    public function index()
    {
        if(! Role::havePremission(['pricelist_view','pricelist_idt']))
            return redirect()->route('admin.dashboard');

        $datas = PriceList::select()->paginate(PAGINATION_COUNT);
        return view('admin.pricelist.index', compact('datas'));
    }

    public function create()
    {
        if(! Role::havePremission(['pricelist_cr']))
            return redirect()->route('admin.dashboard');
        $priceLists = PriceList::select()->get();
        return view('admin.pricelist.create',compact('priceLists'));
    }

    public function store(Request $request)
    {
        if(! Role::havePremission(['pricelist_cr']))
            return redirect()->route('admin.dashboard');

        try {
            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            if (!$request->has('main_pl'))
                $request->request->add(['main_pl' => 0]);

            $request->request->add(['admin_id' =>  Auth::user()->id ]);
            $PL= PriceList::create($request->except(['_token']));
            Log::setLog('create','pricelist',$PL->id,"","");

            if(isset($request->btn))
                if($request->btn =="saveAndNew")
                    return redirect()->route('admin.pricelist.create')->with(['success'=>'تم الحفظ']);
        
            return redirect()->route('admin.pricelist')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.pricelist.create')->with(['error'=>'يوجد خطء']);
        }
    }

    public function edit($id)
    {
        if(! Role::havePremission(['pricelist_view','pricelist_idt']))
            return redirect()->route('admin.dashboard');
        $datas = PriceList::select()->find($id);
        if(!$datas){
            return redirect()->route('admin.pricelist')->with(['error'=>"غير موجود"]);
        }

        $priceLists = PriceList::select()->where('id','!=',$id)->get();
        $categorys = Category::selection()->get();

        return view('admin.pricelist.edit',compact('datas','priceLists','categorys'));
    }
/*
    public function update($id, Request $request)
    {
        if(! Role::havePremission(['pricelist_idt']))
            return redirect()->route('admin.dashboard');

        try {
            $data = PriceList::find($id);
            if (!$data) {
                return redirect()->route('admin.pricelist.edit', $id)->with(['error' => '  غير موجوده']);
            }

            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            Log::setLog('update','pricelist',$id,"",$request->except(['_token']) );
            $data->update($request->except(['_token']));

            return redirect()->route('admin.pricelist')->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.pricelist')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    // public function destroy($id)
    // {

    //     try {
    //         $data = PriceList::find($id);
    //         if (!$data) {
    //             return redirect()->route('admin.pricelist', $id)->with(['error' => '  غير موجوده']);
    //         }
    //         $data->delete();

    //         return redirect()->route('admin.pricelist')->with(['success' => 'تم حذف  بنجاح']);

    //     } catch (\Exception $ex) {
    //         return redirect()->route('admin.pricelist')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
    //     }
    // }

    */
}
