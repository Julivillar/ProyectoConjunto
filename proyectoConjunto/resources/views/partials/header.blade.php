<div class="flexContainer">

    <div class="flexContainer">
        <a href="{{ route('products.index') }}" role="navigation" aria-label="Ir a inicio" class="focuseado">
            <div class="flexContainer logo"></div>
        </a>
    </div>

    <a href="#" class="focuseado">
        <h1>Albir's glorious goods</h1>
    </a>
    @if (Route::has('login'))
        <div class="flexContainer" id="divIconos">
        @auth
        <form method="POST" action="{{ route('logout') }}">
            @csrf

            <x-jet-dropdown-link class="focuseado" href="{{ route('logout') }}"
                     onclick="event.preventDefault();
                            this.closest('form').submit();">
                {{ __('Log Out') }}
            </x-jet-dropdown-link>
        </form>
            {{-- <a href="{{ route('profile.show') }}"><img src="/images/ico-user.png" class="icono" alt="icono usuario"></a> --}}
            <a href="{{ route('profile.show') }}" class="miPerfil focuseado" role="navigation" aria-label="Perfil">Mi perfil</a>
        @else
            <a href="{{ route('login') }}" role="navigation" aria-label="enlace Login" class="focuseado enlaceIcono"><img src="/images/ico-login.png" class="icono" alt="icono login"><span class="textIcoHidden">Login</span></a>


        @if (Route::has('register'))
            <a href="{{ route('register') }}" role="navigation" aria-label="enlace Registrarse" class="focuseado enlaceIcono"><img src="/images/ico-user.png" class="icono" alt="icono usuario"><span class="textIcoHidden">Registrarse</span></a>
        @endif
        @endauth
            <div id="contenedorNum">
                <a href="#" role="navigation" aria-label="Productos añadidos" class="focuseado enlaceIcono"><img src="/images/ico-carrito.png" class="icono" alt="icono carrito" ><span class="textIcoHidden">Carrito</span></a>
                <span id="numCarrito">0</span></div>
                <a href="#contenido" tabindex="1" class="focuseado" id="enlaceContenido">Ir a Contenido</a>
        </div>
    @endif
</div>

{{-- <nav>
    <ul class="categorias">t
        <li><a href="{{route('products.index', ['category' => 1])}}"  data-value=1 class='categoria'> Libros </a></li>
        <li><a href="{{route('products.index', ['category' => 2])}}"  data-value=2 class='categoria'> Juegos </a></li>
        <li><a href="{{route('products.index', ['category' => 3])}}"  data-value=3 class='categoria'> Complementos </a></li>
    </ul>
</nav> --}}
