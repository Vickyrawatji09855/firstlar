<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\dummyapi;
use App\Http\Controllers\UserAuthController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});



Route::get("/data",[dummyapi::class,'dummy']);
Route::get("/list",[dummyapi::class,'list']);
Route::post("/add",[dummyapi::class,'add']);
Route::put("/update",[dummyapi::class,'update']);
Route::get("/search/{name}",[dummyapi::class,'search']);
Route::delete("/delete/{id}",[dummyapi::class,'delete']);



Route::group(['middleware'=>'sanctum'],function($routes){
    Route::post('/dashboard',[UserAuthController::class,'dashboard']);
});


Route::group(['middleware'=>'tokenwa'],function($routes){

    Route::post('/register',[UserAuthController::class,'register']);
    Route::post('/login',[UserAuthController::class,'login']);

    Route::post('/refresh',[UserAuthController::class,'refresh']);
    Route::post('/logout',[UserAuthController::class,'logout']);

});
