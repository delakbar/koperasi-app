<?php 

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AnggotaController;
use App\Http\Controllers\SimpananController;
use App\Http\Controllers\PinjamanController;
use App\Http\Controllers\AngsuranController;

Route::apiResource('anggota', AnggotaController::class);
Route::apiResource('simpanan', SimpananController::class);
Route::apiResource('pinjaman', PinjamanController::class);
Route::apiResource('angsuran', AngsuranController::class);