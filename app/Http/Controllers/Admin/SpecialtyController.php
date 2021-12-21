<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Specialty;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SpecialtyController extends Controller
{
    public function index()
    {
        $datas = Specialty::select()->paginate(PAGINATION_COUNT);
        return view('admin.specialty.index', compact('datas'));
    }

    public function create()
    {
        return view('admin.specialty.create');
    }

    public function store(Request $request)
    {
        try {
            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $request->request->add(['admin_id' =>  Auth::user()->id ]);
            Specialty::create($request->except(['_token']));
            return redirect()->route('admin.specialty')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.specialty.create')->with(['error'=>'يوجد خطء']);
        }
    }

    public function edit($id)
    {
        $datas = Specialty::select()->find($id);
        if(!$datas){
            return redirect()->route('admin.specialty')->with(['error'=>"غير موجود"]);
        }
        return view('admin.specialty.edit',compact('datas'));
    }

    public function update($id, Request $request)
    {
        try {

            $data = Specialty::find($id);
            if (!$data) {
                return redirect()->route('admin.specialty.edit', $id)->with(['error' => '  غير موجوده']);
            }

            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $data->update($request->except(['_token']));

            return redirect()->route('admin.specialty')->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.specialty')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    public function destroy($id)
    {

        try {
            $data = Specialty::find($id);
            if (!$data) {
                return redirect()->route('admin.specialty', $id)->with(['error' => '  غير موجوده']);
            }
            $data->delete();

            return redirect()->route('admin.specialty')->with(['success' => 'تم حذف  بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.specialty')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }
}
