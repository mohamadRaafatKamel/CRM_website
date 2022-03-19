<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Carbon\Carbon;
use App\Models\User;

class AuthController extends Controller
{
    public function registration(Request $request, $type = 1)
    {   
        $request->validate([
            'username' => ['required', 'string', 'max:255'],
            'email' => ['string', 'email', 'max:255', 'unique:users'],
            // 'phone' => ['required', 'string', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
            'gender' => ['integer'],
        ]);
        try {
            // check if add quick or not
            $user = User::where('phone',$request->phone)->first();
            if(isset($user->id)){
                // quick user
                if($user->quick == 1){
                    $user->update([
                        'username' => $request->username,
                        'email' => $request->email,
                        'fname' => $request->fname,
                        'lname' => $request->lname,
                        'title' => $request->title,
                        'birth_date' => $request->birth_date,
                        'gender' => $request->gender,
                        'password' => Hash::make($request->password),
                        'quick' => '0',
                    ]);
                    return response()->json(['data' => ['success' => "1", 'massage' => "User has been Registration"]], 200);
                }else{
                    return response()->json(['data' => ['success' => "0", 'error' => "This Phone Exists", 'message' => "This Phone Exists"]], 400);
                }
            }else{
                // new user
                // if(isset($request->type)){
                //     if($request->type > 3 or $request->type < 1 ){
                //         $request->type = 1;
                //     }
                // }else{
                //     $request->request->add(['type' => '1' ]);
                // }               
                $user = new User([
                    'username' => $request->username,
                    'email' => $request->email,
                    'fname' => $request->fname,
                    'lname' => $request->lname,
                    'title' => $request->title,
                    'birth_date' => $request->birth_date,
                    'phone' => $request->phone,
                    'gender' => $request->gender,
                    'type' => $type,
                    'password' => Hash::make($request->password),
                ]);    
                $user->save();
                return response()->json(['data' => ['success' => "1", 'message' => "User has been Registration"]], 200);
            }           
        } catch (\Exception $ex) {
            return response()->json(['data' => ['success' => "0", 'error' => "Something Error", 'message' => "Error"]], 400);
        }
    }

    public function registrationDriver(Request $request)
    {   
        return $this->registration($request, 5);
    }

    public function registrationUser(Request $request)
    {   
        return $this->registration($request, 1);
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
                return response()->json(['success' => "0", "message" => "Unauthenticated."], 401 );
            }
            // Auth success

            $user = $request->user();
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->token;
            $token->expires_at = Carbon::now()->addDay(1);
            $token->save();

            return response()->json(['data' => [
                'success' => "1",
                'message' => "Success",
                'token_type' => 'Bearer',
                'expires_at' => Carbon::parse($tokenResult->token->expires_at)->toDateString(),
                'access_token' => $tokenResult->accessToken,
            ]],200);
        } catch (\Exception $ex) {
            return response()->json(['data' => ['success' => "0", 'error' => "Something Error", 'message' => "Error"]]);
        }
    }

    public function logout(Request $request)
    {
        try {
            $request->user()->token()->revoke();
            return response()->json(['data' => ['success' => "1", 'message' => "User Logout"]], 200);
        } catch (\Exception $ex) {
            return response()->json(['data' => ['success' => "0", 'error' => "Something Error", 'message' => "Error"]], 400);
        }
    }
}
