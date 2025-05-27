<?php

use App\Http\Controllers\AnggotaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\SimpananController;
use App\Http\Controllers\PinjamanController;
use App\Http\Controllers\AngsuranController;

// Route::get('/', function () {
//     return view('welcome');
// })->name('home');

// Login Routes
Route::get('/', [LoginController::class, 'showLoginForm'])->name('home');
Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('logout', [LoginController::class, 'logout'])->name('logout');

// Register Routes
Route::get('register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('register', [RegisterController::class, 'register']);


//SSP Routes


// Protected routes (require authentication)
Route::middleware(['auth'])->group(function () {
    Route::get('anggota/data', [AnggotaController::class, 'getData'])->name('anggota.getDataPinjaman');
    Route::get('angsuran/data', [AngsuranController::class, 'getDataAngsuran'])->name('angsuran.getDataAngsuran');
    Route::get('pinjaman/data', [PinjamanController::class, 'getDataPinjaman'])->name('pinjaman.data');
    Route::get('simpanan/data', [SimpananController::class, 'getDataSimpanan'])->name('simpanan.data');
    Route::resource('anggota', AnggotaController::class);
    Route::resource('simpanan', SimpananController::class);
    Route::resource('pinjaman', PinjamanController::class);
    Route::resource('angsuran', AngsuranController::class);
    Route::post('/pinjaman/getpinjaman/{id}', [PinjamanController::class, 'getpinjaman'])
    ->name('pinjaman.getpinjaman');
    Route::post('/angsuran/pelunasan', [AngsuranController::class, 'pelunasan'])->name('angsuran.pelunasan');
    Route::get('/pinjaman/get-administrasi-provisi', [PinjamanController::class, 'getAdministrasiProvisi'])->name('pinjaman.getAdministrasiProvisi');
    Route::get('/pinjaman/unpaid-details/{id}', [PinjamanController::class, 'getUnpaidDetails'])->name('pinjaman.unpaidDetails');
    Route::post('/pinjaman/bayar/{id}', [PinjamanController::class, 'bayarPinjaman'])->name('pinjaman.bayar');
    Route::patch('/anggota/{id}/update-status', [AnggotaController::class, 'updateStatus'])->name('anggota.updateStatus');

});
