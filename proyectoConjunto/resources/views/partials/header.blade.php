@if (Route::has('login'))
                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                    @auth
                        <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Dashboard</a>
                    @else
                        <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Log in</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                        @endif
                    @endauth
                </div>
    @endif
<div class="contenedor-logo-empresa">
    <a href="">
        <img src="" alt="Logo de la Empresa">
    </a>
</div>
<div class="contenedor-logo-usuario">
    <a href="">
        <img src="" alt="Logo del usuario">
    </a>
</div>
<div class="contenedor-logo-carrito">

    <a href="">
        <img src="" alt="Logo del carrito">
    </a>
</div>
<nav>
    <ul class="categorias">
        <li><a href="#" data-value=1 class='categoria'> Libros </a></li>
        <li><a href="#" data-value=2 class='categoria'> Juegos </a></li>
        <li><a href="#" data-value=3 class='categoria'> Complementos </a></li>
    </ul>
</nav>
