<?php

namespace App\Http\Controllers\Auth;

use App\Models\Anggota;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function showRegistrationForm()
    {
        return view('auth.register');
    }

    public function register(Request $request)
    {
        $request->validate([
            'username' => 'required|unique:anggota',
            'password' => 'required|min:6|confirmed',
            'nama' => 'required',
            'jabatan' => 'required',
            'no_hp' => 'required',
        ]);

        $anggota = Anggota::create([
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'nama' => $request->nama,
            'jabatan' => $request->jabatan,
            'no_hp' => $request->no_hp,
            'role' => 'anggota',
            'is_active' => '1',
        ]);

        Auth::login($anggota);

        return redirect()->route('anggota');
    }
}
