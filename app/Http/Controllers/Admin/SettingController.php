<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use App\Models\Specialty;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SettingController extends Controller
{
    public function create()
    {
        $datas = Setting::select()->get();
        $setting = [];
        foreach ($datas as $data){
            $setting[$data->name] = $data->value;
        }
        return view('admin.setting.index', compact('setting'));
    }

    public function update(Request $request)
    {
        try {
            if (isset($request->value) && $request->value != null) {
                $allSetting = $request->value;
            } else {
                $allSetting = [];
            }
            // if add image
            if ($request->btn == "sliderImg") {
                if (isset($request->sliderImage1)) {
                    $image = $request->file('sliderImage1');
                    $imageName = "slider_1." . $image->extension();
                    $image->move(public_path('front'), $imageName);
                    $path = "public/front/" . $imageName;
                    $allSetting['sliderImage1'] = $path;
                }
                if (isset($request->sliderImage2)) {
                    $image = $request->file('sliderImage2');
                    $imageName = "slider_2." . $image->extension();
                    $image->move(public_path('front'), $imageName);
                    $path = "public/front/" . $imageName;
                    $allSetting['sliderImage2'] = $path;
                }
                if (isset($request->sliderImage3)) {
                    $image = $request->file('sliderImage3');
                    $imageName = "slider_3." . $image->extension();
                    $image->move(public_path('front'), $imageName);
                    $path = "public/front/" . $imageName;
                    $allSetting['sliderImage3'] = $path;
                }
            }
            if (count($allSetting) > 0) {
                foreach ($allSetting as $key => $val) {
                    if ($val != "") {
                        $lastSetting = Setting::select()->where('name', $key)->first();
                        if ($lastSetting) {
                            $lastSetting->update(['value' => $val]);
                        } else {
                            $sett = new Setting();
                            $sett->name = $key;
                            $sett->value = $val;
                            $sett->save();
                        }
                    }
                }
            }
            return redirect()->route('admin.setting')->with(['success' => 'تم التحديث']);
        } catch (\Exception $ex) {
            return redirect()->route('admin.setting')->with(['error' => 'يوجد خطء']);
        }
    }
}
