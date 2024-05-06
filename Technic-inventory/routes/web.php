<?php

use App\Http\Controllers\loginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\registerController;
use App\Http\Controllers\UserDataController;
use App\Http\Controllers\TelegramController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::post('/',[PostController::class, 'store']);
Route::get('/',[PostController::class, 'fetch']);
Route::get('/cari',[PostController::class,'search']);
Route::get('/details/{id}',[PostController::class, 'fetchWhere']);
Route::get('/details/{id}/edit',[PostController::class, 'update']);
Route::post('/details/{id}/edit',[PostController::class, 'edit']);
route::get('/register',[registerController::class,'index']);
route::post('/register',[registerController::class,'store']);
route::get('/login',[loginController::class,'index'])->middleware('guest');
route::post('/login',[loginController::class,'auth']);
route::get("/log",[PostController::class,'fetchTable']);
route::post('/logout',[loginController::class,'logout']);



