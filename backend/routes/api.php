<?php

use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

//public route
Route::post('register',[AuthController::class, 'register']);
Route::post('login',[AuthController::class, 'login']);

// // Protected routes
Route::group(['middleware' => 'auth:sanctum'], function(){
    Route::resource('products', ProductController::class);
    Route::get('products/search/{keyword}', [ProductController::class, 'search']);
    Route::post('logout',[AuthController::class, 'logout']);
});

// Route::name('admin')->group(['middleware' => 'auth:sanctum'], function(){
//     Route::get('/users', function () {
//        return 'd';
//     });
// });

// Route::prefix('admin')->group(['middleware' => 'auth:sanctum'],function(){
//     Route::resource('products', ProductController::class);
//     Route::get('products/search/{keyword}', [ProductController::class, 'search']);
//     Route::post('logout',[AuthController::class, 'logout']);
// });

