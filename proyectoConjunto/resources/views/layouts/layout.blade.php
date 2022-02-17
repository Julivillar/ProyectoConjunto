<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="/js/carrito.js"></script>
    @stack('scripts')
    @stack('styles')
    <title>@yield('titulo')</title>
</head>

<body>
    <header>
        @include('partials.header')
    </header>
    <nav>
        @include('partials.navIndex')
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
