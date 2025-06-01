<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;

class ProfileController extends Controller
{

    // Tampilkan halaman profile dengan form edit
    public function show()
    {
        $user = Auth::user();
        return view('profile.show', compact('user'));
    }

    // Proses update data profile
    public function update(Request $request)
    {
        $user = Auth::user();

        // Validasi input
        $validatedData = $request->validate([
            'nama' => 'required|string|max:255',
            'username' => ['required', 'string', 'max:255', Rule::unique('anggota')->ignore($user->id)],
            'jabatan' => 'nullable|string|max:255',
            'no_hp' => 'nullable|string|max:20',
            'password' => 'nullable|string|min:6|confirmed',
        ]);

        // Update data user
        $user->nama = $validatedData['nama'];
        $user->username = $validatedData['username'];
        $user->jabatan = $validatedData['jabatan'] ?? $user->jabatan;
        $user->no_hp = $validatedData['no_hp'] ?? $user->no_hp;

        // Jika password diisi, update password
        if (!empty($validatedData['password'])) {
            $user->password = Hash::make($validatedData['password']);
        }

        $user->save();

        return redirect()->route('profile.show')->with('success', 'Profil berhasil diperbarui!');
    }
}
