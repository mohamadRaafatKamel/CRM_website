<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\WebSurvay;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WebSurvayController extends Controller
{
    public function index()
    {
        $datas = WebSurvay::select()->paginate(PAGINATION_COUNT);
        return view('admin.websurvay.index', compact('datas'));
    }

   

}
