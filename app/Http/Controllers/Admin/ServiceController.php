<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Service;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ServiceController extends Controller
{
    public function index()
    {
        $datas = Service::select()->paginate(PAGINATION_COUNT);
        return view('admin.service.index', compact('datas'));
    }

    public function create()
    {
        return view('admin.service.create');
    }

    public function store(Request $request)
    {
        try {
            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $request->request->add(['admin_id' =>  Auth::user()->id ]);
            Service::create($request->except(['_token']));
            return redirect()->route('admin.service')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.service.create')->with(['error'=>'يوجد خطء']);
        }
    }

    public function edit($id)
    {
        $datas = Service::select()->find($id);
        if(!$datas){
            return redirect()->route('admin.service')->with(['error'=>"غير موجود"]);
        }
        return view('admin.service.edit',compact('datas'));
    }

    public function update($id, Request $request)
    {
        try {

            $data = Service::find($id);
            if (!$data) {
                return redirect()->route('admin.service.edit', $id)->with(['error' => '  غير موجوده']);
            }

            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $data->update($request->except(['_token']));

            return redirect()->route('admin.service')->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.service')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    public function destroy($id)
    {

        try {
            $data = Service::find($id);
            if (!$data) {
                return redirect()->route('admin.service', $id)->with(['error' => '  غير موجوده']);
            }
            $data->delete();

            return redirect()->route('admin.service')->with(['success' => 'تم حذف  بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.service')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }
}
