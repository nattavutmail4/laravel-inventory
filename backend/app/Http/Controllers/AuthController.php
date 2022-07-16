<?php
namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    //Register
    public function register(Request $request){
        //Validate fild.
        //ตอนส่ง json create
        /**
         * fileds ที่ส่ง 
         * 'fullname' => ''
         * 'username' => ''
         * 'email' => ''
         *  'password' => ''
         *  'password_confirmation' => ''
         *  'tel' => ''
         *  'role' => ''
         */
        $fields = $request->validate([
            'fullname'=>'required|string',
            'username'=>'required|string',
            'email'=>'required|string|unique:users,email',// ให้ unique จากตาราง users โดยไม่ให้ email ซ้ำ
            'password'=>'required|string|confirmed', //ให้ใส่รหัสสองครั้งเพื่อเช็ครหัสว่าตรงกันไหม
            'tel'=>'required',
            'role'=>'required|integer',
        ]);
      
        $user = User::create([
            'fullname'=>$fields['fullname'],
            'username'=>$fields['username'],
            'email'=>$fields['email'],
            'password'=>bcrypt($fields['password']), //เข้ารหัส password ด้วย bcrypt in laravel เป็น sha
            'tel'=>$fields['tel'],
            'role'=>$fields['role'],
        ]);
        //create token
        $token = $user->createToken($request->userAgent(),["$user->role"])->plainTextToken;
        $response = [
            'user'=>$user,
            'token'=>$token
        ];
        return response($response,201);
    }
    public function login(Request $request){
         //Validate fild
        $fields = $request->validate([
            'email'=>'required|string',
            'password'=>'required|string'
        ]);
        //Check email
        $user = User::where('email',$fields['email'])->first();

        // Check password    in laravel Hash::check       //input            
        if(!$user || !Hash::check($fields['password'],$user->password)){ // ถ้าไม่พบ
            return response([
                'message' => 'Invalid login!'
            ], 401);
        }
        // ลบ token เก่าออกแล้วค่อยสร้างใหม่
        $user->tokens()->delete();
        // Create token  $request->userAgent ดูประเภท device มาจากอุปกรณ์ใด
        $token = $user->createToken($request->userAgent(), ["$user->role"])->plainTextToken;
        $response = [
            'user' => $user,
            'token' => $token
        ];
        return response($response, 201);
    }
    public function logout(Request $request){
        auth()->user()->tokens()->delete();
        return [
            'message' => auth()->user()
        ];
    }
}
