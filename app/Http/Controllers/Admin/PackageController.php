<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Package;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PackageController extends Controller
{
    public function index()
    {
        $datas = Package::select()->paginate(PAGINATION_COUNT);
        return view('admin.package.index', compact('datas'));
    }

    public function create()
    {
        return view('admin.package.create');
    }

    public function store(Request $request)
    {
        try {
            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $request->request->add(['admin_id' =>  Auth::user()->id ]);
            Package::create($request->except(['_token']));
            if(isset($request->btn))
                if($request->btn =="saveAndNew")
                    return redirect()->route('admin.package.create')->with(['success'=>'تم الحفظ']);

            return redirect()->route('admin.package')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.package.create')->with(['error'=>'يوجد خطء']);
        }
    }

    public function edit($id)
    {
        $datas = Package::select()->find($id);
        if(!$datas){
            return redirect()->route('admin.package')->with(['error'=>"غير موجود"]);
        }
        return view('admin.package.edit',compact('datas'));
    }

    public function update($id, Request $request)
    {
        try {
            $data = Package::find($id);
            if (!$data) {
                return redirect()->route('admin.package.edit', $id)->with(['error' => '  غير موجوده']);
            }

            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $data->update($request->except(['_token']));
            return redirect()->route('admin.package')->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.package')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    public function destroy($id)
    {

        try {
            $data = Package::find($id);
            if (!$data) {
                return redirect()->route('admin.package', $id)->with(['error' => '  غير موجوده']);
            }
            $data->delete();

            return redirect()->route('admin.package')->with(['success' => 'تم حذف  بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.package')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }
}
