<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ShuController;
use App\Http\Middleware\RoleMiddleware;
use App\Http\Controllers\AnggotaController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AngsuranController;
use App\Http\Controllers\PinjamanController;
use App\Http\Controllers\SimpananController;
use App\Http\Controllers\PengajuanController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\ControlpanelController;
use App\Http\Controllers\AdminPinjamanController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\KetuaPinjamanController;



// Login Routes
Route::get('/', [LoginController::class, 'showLoginForm'])->name('home');
Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('logout', [LoginController::class, 'logout'])->name('logout');

// Register Routes
Route::get('register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('register', [RegisterController::class, 'register']);

// route untuk semua role
Route::middleware(['auth', 'role:Anggota,Admin,Ketua'])->group(function () {
    Route::resource('pengajuan', PengajuanController::class);
     // Tampilkan halaman profile
    Route::get('/profile', [ProfileController::class, 'show'])->name('profile.show');

    // Proses update profile
    Route::put('/profile', [ProfileController::class, 'update'])->name('profile.update');
});

// route hanya untuk Admin
Route::middleware(['auth','role:Admin'])->group(function () {
    Route::get('/controlpanel', [ControlpanelController::class, 'index'])->name('controlpanel.index');
    Route::put('/controlpanel/jenis_simpanan/{id}', [ControlpanelController::class, 'updateJenisSimpanan'])->name('controlpanel.updateJenisSimpanan');
    Route::put('/controlpanel/jenis_pinjaman/{id}', [ControlpanelController::class, 'updateJenisPinjaman'])->name('controlpanel.updateJenisPinjaman');
    Route::put('/controlpanel/jasa/{id}', [ControlpanelController::class, 'updateJasa'])->name('controlpanel.updateJasa');
    Route::put('/controlpanel/provisi/{id}', [ControlpanelController::class, 'updateProvisi'])->name('controlpanel.updateProvisi');
    Route::post('/controlpanel/save-pengeluaran', [ControlPanelController::class, 'savePengeluaran'])->name('controlpanel.savePengeluaran');
    
    // Route untuk menampilkan form upload
    Route::get('/form-upload-simpanan', [SimpananController::class, 'showForm'])->name('form.upload.simpanan');
    Route::post('/upload-simpanan', [SimpananController::class, 'uploadSimpanan'])->name('upload.simpanan');



    // hitung SHU
    Route::get('/shu', [SHUController::class, 'index'])->name('shu.index');
    Route::get('/shu/data', [SHUController::class, 'getData'])->name('shu.data');
    Route::post('/shu/hitung', [SHUController::class, 'hitungSHU'])->name('shu.hitung');
    Route::post('/shu/reset', [ShuController::class, 'reset'])->name('shu.reset');

     //admin cek pinjaman pengajuan
    Route::get('/pinjaman-pengajuan', [AdminPinjamanController::class, 'index'])->name('pinjaman.cekpengajuan');
    Route::patch('/pinjaman-pengajuan/{id}/update-status', [AdminPinjamanController::class, 'updateStatus'])->name('adminpinjaman.updateStatus');
    
});

// route ketua
Route::middleware(['auth','role:Ketua'])->group(function () {
 // Ketua cek pinjaman pengajuan
    Route::get('/acc-pinjaman', [KetuaPinjamanController::class, 'index'])->name('pinjaman.cekpinjaman');
    Route::patch('/acc-pinjaman/{id}/update-status', [KetuaPinjamanController::class, 'updateStatus'])->name('KetuaPinjaman.updateStatus');
});

// route untuk admin dan ketua
Route::middleware(['auth','role:Admin,Ketua'])->group(function () {

    Route::post('/pinjaman/getpinjaman/{id}', [PinjamanController::class, 'getpinjaman'])->name('pinjaman.getpinjaman');
    Route::post('/angsuran/pelunasan', [AngsuranController::class, 'pelunasan'])->name('angsuran.pelunasan');
    Route::get('/pinjaman/get-administrasi-provisi', [PinjamanController::class, 'getAdministrasiProvisi'])->name('pinjaman.getAdministrasiProvisi');
    Route::get('/pinjaman/unpaid-details/{id}', [PinjamanController::class, 'getUnpaidDetails'])->name('pinjaman.unpaidDetails');
    Route::post('/pinjaman/bayar/{id}', [PinjamanController::class, 'bayarPinjaman'])->name('pinjaman.bayar');
    Route::patch('/anggota/{id}/update-status', [AnggotaController::class, 'updateStatus'])->name('anggota.updateStatus');
    Route::get('anggota/data', [AnggotaController::class, 'getData'])->name('anggota.getDataPinjaman');
    Route::get('angsuran/data', [AngsuranController::class, 'getDataAngsuran'])->name('angsuran.getDataAngsuran');
    Route::get('pinjaman/data', [PinjamanController::class, 'getDataPinjaman'])->name('pinjaman.data');
    Route::get('simpanan/data', [SimpananController::class, 'getDataSimpanan'])->name('simpanan.data');
    Route::resource('anggota', AnggotaController::class);
    Route::resource('simpanan', SimpananController::class);
    Route::resource('pinjaman', PinjamanController::class);
    Route::resource('angsuran', AngsuranController::class);
});
