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
//        if($request->language == 'ar' or $request->language == 'en'){
//            \App::setLocale($request->language);
//        }elseif ($request->language == 'admin'){
//            redirect(route('admin.getlogin'));
//        }


        if($request->language == 'ar' or $request->language == 'en'){
            \App::setLocale($request->language);
            unset($_COOKIE['lang']);
            setcookie('lang',$request->language, time() + (86400 * 30 * 30), "/");
        }elseif ($request->language == 'admin') {
            redirect(route('admin.getlogin'));
        }elseif(!isset($request->language) and $request->route()->getPrefix() != 'admin'){
            if(isset($_COOKIE['lang'])){
                \App::setLocale($_COOKIE['lang']);
            }
        }

        return $next($request);
    }
}
