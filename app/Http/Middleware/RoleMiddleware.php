<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string[]  ...$roles
     * @return mixed
     */
    public function handle(Request $request, Closure $next, ...$roles)
    {
        Log::info('RoleMiddleware triggered', [
            'user' => Auth::guard('web')->user(),
            'roles_allowed' => $roles
        ]);



        $user = Auth::guard('web')->user(); // default guard diarahkan ke anggota
       
        if (!$user) {
            // Jika belum login, redirect ke login
            return redirect()->route('login');
        }

        // Cek apakah role user ada di dalam daftar role yang diizinkan
        if (!in_array($user->role, $roles)) {
            // Jika tidak punya akses, bisa redirect atau abort 403
            abort(403, 'Unauthorized action.');
        }
        return $next($request);
    }
}
