<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title') - Koperasi</title>
    <!-- Google Fonts: Inter -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    @vite(['resources/js/app.js'])
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- Bootstrap Datepicker 1.9.0 CSS -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <!-- DashLite Inspired Custom CSS -->
    <link href="{{ asset('css/layout.css') }}" rel="stylesheet">
    @stack('styles')
</head>
<body>
<div class="sidebar d-flex flex-column justify-content-between p-3" style="height: 100vh;">
    
    {{-- Bagian Atas: Brand + Menu --}}
    <div>
        <a class="navbar-brand mb-4" href="{{ route('home') }}">
            <i class="bi bi-house-door"></i>
            <span class="d-inline-block align-middle">Koperasi</span>
        </a>

        <ul class="nav flex-column mb-0">
            <li class="nav-item">
                <a href="{{ route('pengajuan.index') }}" class="nav-link {{ request()->routeIs('pengajuan.*') ? 'active' : '' }}">
                    <i class="bi bi-house-door"></i> Home
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ route('profile.show') }}" class="nav-link {{ request()->routeIs('profile.*') ? 'active' : '' }}">
                    <i class="bi bi-person"></i> Profile
                </a>
            </li>

            {{-- Control Admin --}}
            @if(auth()->user()->role === 'Admin')
            <li class="nav-item">
                <a class="nav-link d-flex justify-content-between align-items-center" data-bs-toggle="collapse" href="#adminMenu" role="button" aria-expanded="false" aria-controls="adminMenu">
                    <span><i class="bi bi-shield-lock"></i> Control Admin</span>
                    <i class="bi bi-chevron-down"></i>
                </a>
                <div class="collapse ps-3" id="adminMenu">
                    <ul class="nav flex-column">
                        <li><a href="{{ route('form.upload.simpanan') }}" class="nav-link {{ request()->routeIs('simpanan.upload') ? 'active' : '' }}">Upload</a></li>
                        <li><a href="{{ route('anggota.index') }}" class="nav-link {{ request()->routeIs('anggota.*') ? 'active' : '' }}">Anggota</a></li>
                        <li><a href="{{ route('simpanan.index') }}" class="nav-link {{ request()->routeIs('simpanan.*') ? 'active' : '' }}">Simpanan</a></li>
                        <li><a href="{{ route('pinjaman.index') }}" class="nav-link {{ request()->routeIs('pinjaman.index') ? 'active' : '' }}">Pinjaman</a></li>
                        <li><a href="{{ route('pinjaman.cekpengajuan') }}" class="nav-link {{ request()->routeIs('pinjaman.cekpengajuan') ? 'active' : '' }}">Cek Pengajuan</a></li>
                        {{-- <li><a href="{{ route('angsuran.index') }}" class="nav-link">Angsuran</a></li> --}}
                        <li><a href="{{ route('shu.index') }}" class="nav-link {{ request()->routeIs('shu.*') ? 'active' : '' }}">SHU</a></li>
                        <li><a href="{{ route('controlpanel.index') }}" class="nav-link {{ request()->routeIs('controlpanel.*') ? 'active' : '' }}">Control Panel</a></li>
                    </ul>
                </div>
            </li>
            @endif

            {{-- Control Ketua --}}
            @if(auth()->user()->role === 'Ketua')
            <li class="nav-item">
                <a class="nav-link d-flex justify-content-between align-items-center" data-bs-toggle="collapse" href="#ketuaMenu" role="button" aria-expanded="false" aria-controls="ketuaMenu">
                    <span><i class="bi bi-person-badge"></i> Control Ketua</span>
                    <i class="bi bi-chevron-down"></i>
                </a>
                <div class="collapse ps-3" id="ketuaMenu">
                    <ul class="nav flex-column">
                        <li><a href="{{ route('pinjaman.cekpinjaman') }}" class="nav-link {{ request()->routeIs('pinjaman.cekpinjaman') ? 'active' : '' }}">Cek Pengajuan</a></li>
                    </ul>
                </div>
            </li>
            @endif
        </ul>
    </div>

    {{-- Bagian Bawah: Logout --}}
    <div>
        <a href="{{ route('logout') }}" class="nav-link text-danger">
            <i class="bi bi-box-arrow-right"></i> Logout
        </a>
    </div>
</div>

    <nav class="navbar navbar-expand navbar-light shadow-sm">
        <div class="container-fluid">
            <button class="btn btn-sm btn-outline-secondary me-2" id="sidebarToggle">
                <i class="bi bi-list"></i>
            </button>
            <span class="navbar-text ms-auto">
                @auth
                   {{ Auth::user()->nama }}
                @endauth
            </span>
        </div>
    </nav>

    <div class="main-content">
        @yield('content')
    </div>

    @stack('scripts')
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/toogle.js') }}"></script>
    
</body>
</html>
