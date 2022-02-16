<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {{-- <script src="/js/loadProducts.js"></script>  --}}
    @stack('scripts')
    @stack('styles')
    {{-- <link rel="stylesheet" href="css/style1.css"> --}}
    <title>@yield('titulo')</title>
</head>
<body>
    <header>
        @include('partials.header')
    </header>
    <nav>
        @include('partials.nav')
    </nav>

    <main>
        <div class="flexContainer">
            @yield('cuerpo')
        </div>
    </main>

    <footer>
        @include('partials.footer')
    </footer>
</body>
</html>
