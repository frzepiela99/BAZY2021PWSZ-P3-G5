<?php

use App\Http\Controllers\HelloWorldController;
use App\Http\Controllers\DemoController;
use App\Http\Controllers\DodajKolorController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello', [HelloWorldController::class, 'show']);

#Route::get('/demo', [DemoController::class, 'show']);

//formularze Panel Admina
        //Dodawanie koloru
        Route::view('dodajkolorform', 'dodajkolor');
        Route::post('/submit', [DodajKolorController::class, 'save']);

        //Dodawanie wersji
        Route::view('dodajwersjeform', 'dodajwersje');
        Route::post('/wersja-submit', [DodajWersjeController::class, 'save']);

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/users/logout', [App\Http\Controllers\Auth\LoginController::class, 'userLogout'])->name('user.logout');

/*Route::resource('posts', 'PostController');
Route::get('posts', 'PostsController@index');
Route::get('posts/create', 'PostController@create');
Route::post('posts', 'PostController@store');
Route::get('posts/{post}', 'PostsController@show');
Route::get('posts/{post}/edit', 'PostsController@edit');
Route::put('posts/{post}', 'PostsController@update'); // lub Route::patch('/posts/{post}', 'PostsController@update');
Route::delete('posts/{post}', 'PostsController@destroy');
*/


 Route::prefix('admin')->group(function(){
    Route::get('/login', [App\Http\Controllers\Auth\AdminLoginController::class, 'showLoginForm'])->name('admin.login');
    Route::post('/login', [App\Http\Controllers\Auth\AdminLoginController::class, 'login'])->name('admin.login.submit');
    Route::get('/', [App\Http\Controllers\AdminController::class, 'index'])->name('admin.dashboard');
    Route::get('/logout', [App\Http\Controllers\Auth\AdminLoginController::class, 'logout'])->name('admin.logout');

    //Reset hasel

    Route::post('/password/email', [App\Http\Controllers\Auth\AdminForgotPasswordController::class, 'sendResetLinkEmail'])->name('admin.password.email');
    Route::get('/password/reset', [App\Http\Controllers\Auth\AdminForgotPasswordController::class, 'showLinkRequestForm'])->name('admin.password.request');
    Route::post('/password/reset', [App\Http\Controllers\Auth\AdminResetPasswordController::class, 'reset']);
    Route::get('/password/reset/{token}', [App\Http\Controllers\Auth\AdminResetPasswordController::class, 'showResetForm'])->name('admin.password.reset');




    });

