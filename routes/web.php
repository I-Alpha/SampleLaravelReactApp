<?php

use Illuminate\Support\Facades\Route;
use App\Models\CounterEvent;
use App\Http\Controllers\CounterEventController ; 
use Illuminate\Support\Facades\DB;
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
    return view('index');
}); 
Route::get('counter', function () {
    return view('counter');
}); 

Route::resource('CounterRecords', CounterEventController::class); 