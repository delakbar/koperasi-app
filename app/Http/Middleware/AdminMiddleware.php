<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // Cek apakah user sudah login
        if (!Auth::check()) {
            // Jika belum login, redirect ke halaman login
            return redirect()->route('login');
        }

        // Cek apakah user memiliki role admin
        $user = Auth::user();
        if ($user->role !== 'admin') {
            // Jika bukan admin, bisa redirect ke halaman lain atau tampilkan 403
            abort(403, 'Unauthorized action.');
        }

        // Jika lolos pengecekan, lanjutkan request
        return $next($request);
    }
}
