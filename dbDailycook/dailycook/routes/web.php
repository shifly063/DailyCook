<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ReceipeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/receipe', [AuthController::class,'index']);
Route::get('/receipe/create', [AuthController::class,'create']);
Route::post('/receipe', [AuthController::class,'insert']);
Route::get('/receipe/{id}/edit', [AuthController::class,'edit']);
Route::put('/receipe/{id}',[AuthController::class,'update']);
Route::post('/receipe/search', [ReceipeController::class, 'search']);
Route::get('/receipe/search/{id}',[AuthController::class,'showsearch']);

Route::get('/user', [ReceipeController::class, 'indexuser']);