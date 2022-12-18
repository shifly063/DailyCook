<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ReceipeController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('/auth/register', [AuthController::class, 'register']);
Route::post('/auth/login', [AuthController::class, 'login']);
Route::get('/auth/login/{id}',[AuthController::class,'showprofil']);
Route::get('/receipe', [ReceipeController::class,'index']);
Route::post('/receipe', [ReceipeController::class,'insert']);
Route::get('/auth/{id}',[ReceipeController::class,'show']);
Route::put('/auth/{id}',[ReceipeController::class,'update']);
Route::delete('/receipe/{id}',[ReceipeController::class,'dropIn']);
Route::post('/receipe/search', [ReceipeController::class, 'search']);
Route::get('/receipe/search/{id}',[AuthController::class,'showsearch']);

Route::get('/user', [ReceipeController::class, 'indexuser']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});