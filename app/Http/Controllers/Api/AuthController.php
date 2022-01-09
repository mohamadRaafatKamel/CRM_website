<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use App\Models\User;

class AuthController extends Controller
{
    public function registration(Request $request)
    {
        $request->validate([
            'username' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone' => ['required', 'string', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
            'gender' => ['integer'],
            'type' => ['integer'],
        ]);
        try {

            $user = new User([
                'username' => $request->username,
                'email' => $request->email,
                'fname' => $request->fname,
                'lname' => $request->lname,
                'title' => $request->title,
                'birth_date' => $request->birth_date,
                'phone' => $request->phone,
                'gender' => $request->gender,
                'type' => $request->type,
                'password' => Hash::make($request->password),
            ]);

            $user->save();
            return response()->json(['data' => ['success' => "1", 'massage' => "User has been Registration"]], 200);
        } catch (\Exception $ex) {
            return response()->json(['data' => ['success' => "0", 'error' => "Something Error"]]);
        }
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => ['required','string'],
            'password' => ['required','string'],
        ]);
        try {
            // auth by phone or email
            if (strpos($request->email, '@') !== false) {
                $credentials = request(['email','password']);
            }else{
                $request->request->add(['phone' => $request->email ]);
                $credentials = request(['phone','password']);
            }

            if (!Auth::attempt($credentials)){
                return response()->json(["message" => "Unauthenticated."], 401 );
            }
            // Auth success

            $user = $request->user();
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->token;
            $token->expires_at = Carbon::now()->addDay(1);
            $token->save();

            return response()->json(['data' => [
                'token_type' => 'Bearer',
                'expires_at' => Carbon::parse($tokenResult->token->expires_at)->toDateString(),
                'access_token' => $tokenResult->accessToken,
                'user' => Auth::user(),
            ]]);
        } catch (\Exception $ex) {
            return response()->json(['data' => ['success' => "0", 'error' => "Something Error"]]);
        }
    }

    public function logout(Request $request)
    {
        try {
            $request->user()->token()->revoke();
            return response()->json(['data' => ['massage' => "User Logout"]], 200);
        } catch (\Exception $ex) {
            return response()->json(['data' => ['success' => "0", 'error' => "Something Error"]]);
        }
    }
}
