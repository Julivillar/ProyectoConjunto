<div class="flexContainer">

    <div class="flexContainer">
        <a href="{{ route('products.index') }}">
            <div class="flexContainer logo"></div>
        </a>
    </div>

    <a href="#">
        <h1>Albir's glorious goods</h1>
    </a>
    @if (Route::has('login'))
        <div class="flexContainer" id="divIconos">
        @auth
        <form method="POST" action="{{ route('logout') }}">
            @csrf

            <x-jet-dropdown-link href="{{ route('logout') }}"
                     onclick="event.preventDefault();
                            this.closest('form').submit();">
                {{ __('Log Out') }}
            </x-jet-dropdown-link>
        </form>
            {{-- <a href="{{ route('profile.show') }}"><img src="/images/ico-user.png" class="icono" alt="icono usuario"></a> --}}
            <a href="{{ route('profile.show') }}" class="miPerfil">Mi perfil</a>
        @else
            <a href="{{ route('login') }}"><img src="/images/ico-login.png" class="icono" alt="icono login"></a>
            <a href="{{ route('login') }}" class="textIcoHidden"><span>Login</span></a>

        @if (Route::has('register'))
            <a href="{{ route('register') }}"><img src="/images/ico-user.png" class="icono" alt="icono usuario"></a>
            <a href="{{ route('register') }}" class="textIcoHidden"><span>Registrarse</span></a>
        @endif
        @endauth


            <a href="{{ route('showCart', $_COOKIE['cart']) }}"><img src="/images/ico-carrito.png" class="icono" alt="icono carrito"></a>
            <span id="numCarrito">0</span>
            <a href="{{ route('showCart', $_COOKIE['cart']) }}" class="textIcoHidden"><span>Carrito</span></a>

        </div>
    @endif
</div>

{{-- <nav>
    <ul class="categorias">
        <li><a href="{{route('products.index', ['category' => 1])}}"  data-value=1 class='categoria'> Libros </a></li>
        <li><a href="{{route('products.index', ['category' => 2])}}"  data-value=2 class='categoria'> Juegos </a></li>
        <li><a href="{{route('products.index', ['category' => 3])}}"  data-value=3 class='categoria'> Complementos </a></li>
    </ul>
</nav> --}}
