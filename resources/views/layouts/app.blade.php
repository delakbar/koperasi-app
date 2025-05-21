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
<div class="sidebar d-flex flex-column p-3">
    <a class="navbar-brand mb-4" href="{{ route('home') }}">
        <i class="bi bi-house-door"></i>
        <span class="d-inline-block align-middle">Koperasi</span>
    </a>
    <ul class="nav nav-pills flex-column mb-auto">
        @auth
            <li class="nav-item">
                <a class="nav-link {{ request()->routeIs('anggota.*') ? 'active' : '' }}" href="{{ route('anggota.index') }}">
                    <i class="bi bi-people"></i> 
                    <span class="nav-text">Anggota</span>
                </a>
            </li>
            <li>
                <a class="nav-link {{ request()->routeIs('simpanan.*') ? 'active' : '' }}" href="{{ route('simpanan.index') }}">
                    <i class="bi bi-wallet2"></i> 
                    <span class="nav-text">Simpanan</span>
                </a>
            </li>
            <li>
                <a class="nav-link {{ request()->routeIs('pinjaman.*') ? 'active' : '' }}" href="{{ route('pinjaman.index') }}">
                    <i class="bi bi-cash-stack"></i> 
                    <span class="nav-text">Pinjaman</span>
                </a>
            </li>
            <li>
                <a class="nav-link {{ request()->routeIs('angsuran.*') ? 'active' : '' }}" href="{{ route('angsuran.index') }}">
                    <i class="bi bi-credit-card"></i> 
                    <span class="nav-text">Angsuran</span>
                </a>
            </li>
            <li>
                <a class="nav-link" href="{{ route('logout') }}">
                    <i class="bi bi-box-arrow-right"></i> 
                    <span class="nav-text">Logout</span>
                </a>
            </li>
        @else
            <li>
                <a class="nav-link" href="{{ route('login') }}">
                    <i class="bi bi-box-arrow-in-right"></i> 
                    <span class="nav-text">Login</span>
                </a>
            </li>
            <li>
                <a class="nav-link" href="{{ route('register') }}">
                    <i class="bi bi-person-plus"></i> 
                    <span class="nav-text">Register</span>
                </a>
            </li>
        @endauth
    </ul>
</div>

    <nav class="navbar navbar-expand navbar-light shadow-sm">
        <div class="container-fluid">
            <button class="btn btn-sm btn-outline-secondary me-2" id="sidebarToggle">
                <i class="bi bi-list"></i>
            </button>
            <span class="navbar-text ms-auto">
                @auth
                    Selamat datang, {{ Auth::user()->nama }}
                @endauth
            </span>
        </div>
    </nav>

    <div class="main-content">
        @yield('content')
    </div>

    @stack('scripts')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/toogle.js') }}"></script>
</body>
</html>
