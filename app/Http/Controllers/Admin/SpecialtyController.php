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
        $generals = Specialty::select()->General()->get();
        return view('admin.specialty.create',compact('generals'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name_en'=>"unique:specialty,name_en",
        ]);
        try {
            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $image = $request->file('img');
            $imageName = "spc_".str_replace(' ', '_', $request->name_en) . ".". $image->extension();
            $image->move(public_path('specialty'),$imageName);
            $request->request->add(['image' =>  "public/specialty/".$imageName ]);
            $request->request->add(['admin_id' =>  Auth::user()->id ]);
            Specialty::create($request->except(['_token']));
            if(isset($request->btn))
                if($request->btn =="saveAndNew")
                    return redirect()->route('admin.specialty.create')->with(['success'=>'تم الحفظ']);
        
            return redirect()->route('admin.specialty')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.specialty.create')->with(['error'=>'يوجد خطء']);
        }
    }

    public function edit($id)
    {
        $generals = Specialty::select()->General()->get();
        $datas = Specialty::select()->find($id);
        if(!$datas){
            return redirect()->route('admin.specialty')->with(['error'=>"غير موجود"]);
        }
        return view('admin.specialty.edit',compact('datas','generals'));
    }

    public function update($id, Request $request)
    {
        // $request->validate([
        //     'name_en'=>"unique:specialty,name_en",
        // ]);
        try {

            $data = Specialty::find($id);
            if (!$data) {
                return redirect()->route('admin.specialty.edit', $id)->with(['error' => '  غير موجوده']);
            }

            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            if ($request->has('img')){
                $image = $request->file('img');
                $imageName = "spc_".str_replace(' ', '_', $request->name_en). ".". $image->extension();
                $image->move(public_path('specialty'),$imageName);
                $imgPath = "public/specialty/".$imageName;
            }else{
                $imgPath = $data->image;
            }
            $request->request->add(['image' => $imgPath]);

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
