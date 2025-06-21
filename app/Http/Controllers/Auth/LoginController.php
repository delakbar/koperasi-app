<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    // Menampilkan form login
    public function showLoginForm()
    {
        return view('auth.login');
    }

    // Proses login
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'username' => ['required', 'string'],
            'password' => ['required', 'string'],
        ]);

        if (Auth::attempt($credentials, $request->filled('remember'))) {
            $request->session()->regenerate();

            // jika role anggota  return ke halaman anggota
            if (Auth::user()->role === 'Anggota') {
                return redirect()->intended(route('pengajuan.index'));
            }else{
                // jika role admin atau lainnya, redirect ke halaman admin
                return redirect()->intended(route('anggota.index'));
            }
           
        }
        
        return back()->withErrors([
            'username' => 'Username atau password salah.',
        ])->onlyInput('username');
    }

    // Logout user
    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        
        $request->session()->regenerateToken();

        return redirect('/login');
    }
}
