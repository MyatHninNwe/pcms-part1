<?php

use Illuminate\Support\Facades\Route;
 use App\Http\Controllers\ProfileController;
// use App\Http\Controllers\UserController;
// use App\Http\Controllers\PostController;
// use App\Http\Controllers\HomeController;

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


// //for BlogController
// Route::get('/blog/index',[BlogtwoController::class,'index'])->name('blog/index');
// Route::get('/blog/create',[BlogtwoController::class,'create'])->name('blog/create');
// Route::post('/blog/create', [BlogtwoController::class, 'store'])->name('blog/store');

// //for Categorytow
// Route::get('/categorytwo/index',[CategorytwoController::class,'index'])->name('categorytwo/index');
// Route::get('/categorytwo/create',[CategorytwoController::class,'create'])->name('categorytwo/create');
// Route::post('/categorytwo/create', [CategorytwoController::class, 'store'])->name('categorytwo/store');

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::get('/profile/create',[ProfileController::class,'create'])->name('profile/create');
// Route::post('/profile/store', [ProfileController::class, 'store'])->name('profile/store');
