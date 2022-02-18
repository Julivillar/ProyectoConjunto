<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
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

/* Route::get('/', function () {
    return view('welcome');
}); */

Route::get('/privacy', [ProductController::class, 'showPrivacy'])
    ->name('showPrivacy', 'products.showPrivacy');

Route::get('/products/offers', [ProductController::class, 'offers']);
Route::get('/carrito', [ProductController::class, 'carrito'])
    ->name('carrito', 'products.carrito');


Route::get('/terms', [ProductController::class, 'showTerms'])
    ->name('showTerms', 'products.showTerms');

Route::resource('/', ProductController::class)
    ->missing(function (Request $request) {
        return Redirect::route('products.index');
    });

Route::resource('/orders', OrderController::class)
    ->missing(function (Request $request) {
        return Redirect::route('orders.index');
    });

Route::resource('/categories', CategoryController::class)
    ->missing(function (Request $request) {
        return Redirect::route('categories.index');
    });

/* Route::resource('/products', ProductController::class)
->missing(function (Request $request){
    return Redirect::route('products.index');
}); */
Route::resource('/products', ProductController::class)
    ->missing(function (Request $request) {
        return Redirect::route('products.index');
    });

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
