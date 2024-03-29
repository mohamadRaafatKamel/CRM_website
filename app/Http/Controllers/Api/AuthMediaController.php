<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;

class AuthMediaController extends Controller
{
    /**
     * Login Using Facebook
     */
    public function loginUsingFacebook()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function callbackFromFacebook()
    {
        try {
            $user = Socialite::driver('facebook')->user();

            dd($user);

            $saveUser = User::updateOrCreate([
                'facebook_id' => $user->getId(),
            ],[
                'name' => $user->getName(),
                'email' => $user->getEmail(),
                'password' => Hash::make($user->getName().'@'.$user->getId())
            ]);

            Auth::loginUsingId($saveUser->id);
            
            return redirect()->route('home');
        } catch (\Throwable $th) {
            throw $th;
        }
    }

    /**
     * Login Using Google
     */
    public function loginUsingGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function callbackFromGoogle()
    {
        try {
            $user = Socialite::driver('google')->user();

            dd($user);

            // $saveUser = User::updateOrCreate([
            //     'facebook_id' => $user->getId(),
            // ],[
            //     'name' => $user->getName(),
            //     'email' => $user->getEmail(),
            //     'password' => Hash::make($user->getName().'@'.$user->getId())
            // ]);

            // Auth::loginUsingId($saveUser->id);
            
            // return redirect()->route('home');
        } catch (\Throwable $th) {
            throw $th;
        }
    }
}
