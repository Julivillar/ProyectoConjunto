<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    @stack('scripts')
    @stack('styles')
    <title>@yield('titulo')</title>
</head>
<body>
    <header>
        @include('partials.headerIndex')
    </header>
    @yield('cuerpo')
    <footer>
        @include('partials.footer')
    </footer>
</body>
</html>
