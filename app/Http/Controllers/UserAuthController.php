<?php

namespace App\Http\Controllers;
use Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Http\Request;

class UserAuthController extends Controller{

    public function register(Request $request){
        $validator=Validator::make($request->all(),[
            'name' =>'required|string|min:2|max:8',
            'email' =>'required|string|email|unique:users',
            'password' => 'required|min:6|confirmed'
        ]);

        if($validator->fails()){
            return response()->json($validator->errors(),400);

        }

       $user= User::create([
            'name' =>$request->name,
            'email' =>$request->email,
            'password' =>Hash::make($request->password)
        ]);

        return response()->json([
            'message' => 'User registered Successfully',
            'user'  => $user
        ]);

    }

    public function login(Request $request){
        $validator=Validator::make($request->all(),[

            'email' =>'required|string|email|min:4',
            'password' => 'required|min:6|string'
        ]);

        if($validator->fails()){
            return response()->json($validator->errors(),400);
        }

        if(!$token=auth()->attempt($validator->validated())){
            return response()->json(['error'=>'Unauthorized']);
        }
        return $this->respondWithToken($token);
    }

    protected function respondWithToken($token){
        return response()->json([
            'access_token' =>$token,
            'token_type' =>'bearer',
            'expires_in' =>auth()->factory()->getTTL()*60
        ]);
    }

    public function dashboard(Request $request){
        return response()->json(auth()->user());
    }

    public function refresh(){
        return $this->respondWithToken(auth()->refresh());
    }

    public function logout(){
        auth()->logout();
        return response()->json(['message'=>'User Succesfully logged out']);
    }

}
