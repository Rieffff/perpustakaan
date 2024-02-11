<?php

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

//View Main Front End
Route::get('/', 'C_Home@pageHome')->name('home');


//login

Route::get('login', 'C_Home@login')->name('login'); 
Route::patch('/proseslogin', 'C_Home@proseslogin'); 
Route::get('/sign', 'C_Home@login')->name('login');
Route::get('/blog', 'BlogController@index');
Route::get('/project', 'Project@index');
Route::get('/buku_tamu', 'bukuTamuController@index');
Route::patch('/tamu/store', 'bukuTamuController@store');
Route::get('/isi_tamu', 'bukuTamuController@isi');
Route::get('/blog/{blog:judul}', 'BlogController@show');
Route::patch('/cariRiwayat', 'C_Home@cariRiwayat');
Route::get('/cariRiwayat', function()
{
    # code...
    return redirect('/');
});
Route::group(["middleware" => ['auth','checkrole:Guru']], function(){
    Route::get('/home', 'C_Home@welcome');   
       
    Auth::routes();
    Route::get('/user', 'C_User@index');
    Route::get('/detailuser/{user}', 'C_User@detail');
    Route::patch('/user/store', 'C_User@store'); 
    Route::delete('/user/{user}', 'C_User@destroy');
    Route::patch('/user/{user}', 'C_User@update');
    Route::patch('/userReset/{user}', 'C_User@userReset');

});
//midleware
Route::group(["middleware" => ['auth','checkrole:Admin']], function(){
    Route::get('/home', 'C_Home@welcome');   
       
    Auth::routes();
    Route::get('/user', 'C_User@index');
    Route::get('/detailuser/{user}', 'C_User@detail');
    Route::patch('/user/store', 'C_User@store'); 
    Route::delete('/user/{user}', 'C_User@destroy');
    Route::patch('/user/{user}', 'C_User@update');
    Route::patch('/userReset/{user}', 'C_User@userReset');

});

Route::group(["middleware" => ['auth','checkrole:Admin,Operator,Guru']], function(){
    Auth::routes();
    Route::get('/index', 'C_Home@index'); 
    //Route::post('keluar', 'C_Home@keluar'); 
    Route::get('/updatePassword', 'C_User@updatePassword');
    Route::patch('/updatePasswordpro', 'C_User@updatePasswordPro');
    Route::get('/out', 'C_Home@out'); 
});
Route::group(["middleware" => ['auth','checkrole:Operator']], function(){
    Auth::routes();
    Route::get('/operator', 'C_Peminjaman@index'); 
    Route::get('/peminjaman', 'C_Peminjaman@index'); 
    Route::patch('/pengembalian2', 'C_Pengembalian@pengembalian'); 
    Route::get('/pengembalian', 'C_Pengembalian@index'); 
    Route::get('/data', 'data@index'); 
    Route::get('/detailData/{siswa}', 'data@index2'); 
    Route::post('/cetakCustomPDF', 'data@cetak');
    Route::post('/cetakCustomPDF2', 'data@cetak2');
    Route::patch('/pilihbuku', 'C_Peminjaman@index2'); 
    Route::patch('/kembalikan', 'C_Pengembalian@kembalikan'); 
    Route::get('/pilihbuku', 'C_Peminjaman@index'); 
    Route::patch('/pinjambuku', 'C_Peminjaman@create');        
    // buku
    Route::get('/buku', 'C_Buku@index');
    Route::get('/bukuEdit/{buku}', 'C_Buku@show');  
    Route::patch('/buku/store', 'C_Buku@store'); 
    Route::delete('/buku/{buku}', 'C_Buku@destroy');
    Route::patch('/buku/{buku}', 'C_Buku@update');
    Route::get('/buku/export', 'C_Buku@export')->name('export');
    Route::post('/buku/import', 'C_Buku@import')->name('import');
    // kategori
    Route::get('/kategori', 'C_Kategori@index');
    Route::patch('/kategori/store', 'C_Kategori@store'); 
    Route::patch('/kategori/{m_Kategori}', 'C_Kategori@update');
    Route::delete('/kategori/{m_Kategori}', 'C_Kategori@destroy');
    Route::get('/kategori/export', 'C_Kategori@export')->name('export');
    Route::post('/kategori/import', 'C_Kategori@import')->name('import');
    //kelas
    Route::get('/kelas', 'C_Kelas@index');
    Route::patch('/kelas/store', 'C_Kelas@store'); 
    Route::patch('/kelas/{kelas}', 'C_Kelas@update');
    Route::delete('/kelas/{kelas}', 'C_Kelas@destroy');
    //siswa
    Route::get('/siswa', 'C_Siswa@index');
    Route::patch('/siswa/store', 'C_Siswa@store'); 
    Route::patch('/siswa/{siswa}', 'C_Siswa@update');
    Route::delete('/siswa/{siswa}', 'C_Siswa@destroy'); 
    //Rak buku
    Route::get('/rak', 'C_Rak@index');
    Route::patch('/rak/store', 'C_Rak@store'); 
    Route::patch('/rak/{rak}', 'C_Rak@update');
    Route::delete('/rak/{rak}', 'C_Rak@destroy');
});

