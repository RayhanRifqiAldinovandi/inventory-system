<?php

namespace App\Http\Controllers;

use App\Models\userData;
use Illuminate\Http\Request;

class registerController extends Controller
{
    //
    public function index(){
        return view('register');
    }

    public function store(Request $request){

        $data = $request->all();
        $data['password'] = bcrypt($data['password']) ;
        userData::create($data);

        return redirect('/');
    }

}
