<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class loginController extends Controller
{
    //Route ke halaman login
    public function index(){
        return view('login');
    }

    //Autentikasi user
    public function auth(Request $request){
        //Cek apabila nama dan password sudah dimasukkan
        $request->validate([
            'name'=>'required',
            'password'=> 'required'
        ]);

        $cred = $request->only('name','password');

        //Jika sukses login
        if(Auth::attempt($cred)){ 
            $request->session()->regenerate(); //Regenerate session
            return redirect()->intended('/'); // Redirect ke halaman home
        //Jika gagal login
        }else{
            return back()->withErrors(['message'=>'invalid credentials']);//Redirect ke halaman login dengan message 'invalid credentials'
        }
    }

    public function logout(Request $request){
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
