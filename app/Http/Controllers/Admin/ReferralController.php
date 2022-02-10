<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Referral;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReferralController extends Controller
{
    public function index()
    {
        $datas = Referral::select()->paginate(PAGINATION_COUNT);
        return view('admin.referral.index', compact('datas'));
    }

    public function create()
    {
        return view('admin.referral.create');
    }

    public function store(Request $request)
    {
        try {
            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $request->request->add(['admin_id' =>  Auth::user()->id ]);
            Referral::create($request->except(['_token']));
            if(isset($request->btn))
                if($request->btn =="saveAndNew")
                    return redirect()->route('admin.referral.create')->with(['success'=>'تم الحفظ']);

            return redirect()->route('admin.referral')->with(['success'=>'تم الحفظ']);
        }catch (\Exception $ex){
            return redirect()->route('admin.referral.create')->with(['error'=>'يوجد خطء']);
        }
    }

    public function edit($id)
    {
        $datas = Referral::select()->find($id);
        if(!$datas){
            return redirect()->route('admin.referral')->with(['error'=>"غير موجود"]);
        }
        return view('admin.referral.edit',compact('datas'));
    }

    public function update($id, Request $request)
    {
        try {
            $data = Referral::find($id);
            if (!$data) {
                return redirect()->route('admin.referral.edit', $id)->with(['error' => '  غير موجوده']);
            }

            if (!$request->has('disabled'))
                $request->request->add(['disabled' => 1]);

            $data->update($request->except(['_token']));
            return redirect()->route('admin.referral')->with(['success' => 'تم التحديث بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.referral')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }

    public function destroy($id)
    {

        try {
            $data = Referral::find($id);
            if (!$data) {
                return redirect()->route('admin.referral', $id)->with(['error' => '  غير موجوده']);
            }
            $data->delete();

            return redirect()->route('admin.referral')->with(['success' => 'تم حذف  بنجاح']);

        } catch (\Exception $ex) {
            return redirect()->route('admin.referral')->with(['error' => 'هناك خطا ما يرجي المحاوله فيما بعد']);
        }
    }
}
