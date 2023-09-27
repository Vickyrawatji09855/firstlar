<?php

use App\Http\Controllers\CustomerController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Models\Customers;

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

Route::get('/',[UserController::class,'show']);
Route::post('/',[UserController::class,'insert']);
Route::get('/customer/delete/{id}',[UserController::class,'delete'])->name('customer.delete');
Route::get('/customer/edit/{id}',[UserController::class,'edit'])->name('customer.edit');
Route::post('/customer/update/{id}',[UserController::class,'update'])->name('customer.update');
Route::get('/view',[UserController::class,'view']);
Route::get('/address',[UserController::class,'showaddress']);
Route::post('/address',[UserController::class,'addaddress']);
Route::get('/pdf',[UserController::class,'pdf']);
Route::get('/mailwa',[UserController::class,'mailwa']);
Route::get('/mail',[UserController::class,'mail']);
Route::get('/html',[CustomerController::class,'html']);
Route::get('/mpdf',[CustomerController::class,'mpdf']);
Route::get('/lang',[CustomerController::class,'lang']);
