<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class SetLanguage
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if($request->language == 'ar' or $request->language == 'en'){
            \App::setLocale($request->language);
        }elseif ($request->language == 'admin'){
            redirect(route('admin.getlogin'));
        }
//else{
//            \App::setLocale('ar');
////            $request->language = app()->getLocale();
//        }
//        print_r($request->language);die();
        return $next($request);
    }
}
