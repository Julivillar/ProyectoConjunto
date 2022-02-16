@extends('layouts.layoutProduct')

@section('titulo', 'Producto')

@section('cuerpo')
    <link rel="stylesheet" href="/css/style1.css">
    <div class="textContent">


        <div class="descripcion-producto">
            <h1 id="tituloProducto">{{ $product->name }}</h1>
            <p id="precioCalculado">
                @php
               if ($product->offer != 1) {
                        $precioFinal = $product->price + ($product->price * ($product->tax/100));
                }
               else {
                        $precioFinal -= ($product->price * ($product->discount/100));
               }
               print($precioFinal.' €');
               @endphp
            </p>
            <p class="letraGris">Impuestos incluidos</p>
            @if ($product->stock <=5)
            <p class="letraGris">Solo quedan {{$product->stock}} unidades</p>
            @endif

            <p class="textoCantidad">Cantidad</p>
            <div class="contenedorBotones">
                <div id="contenedorBtn">
                    <button class="btn" type="button" id="menos" onclick="contadormenos('cantidad')">-</button>
                    <input id="cantidad" type="text" style="text-align: center;" value="1" readonly>
                    <button class="btn" type="button" id="mas" onclick="contadormas('cantidad')">+</button>
                </div>
                <div id="fixAdd"><button id="btnAdd">Añadir</button></div>
            </div>
            <p class="textoCantidad">Descripción</p>
            <p id="descripcion">{{ $product->description }}</p>
            @if (isset($user->role) && $user->role == 'Admin')
                <div class="btnEditar"><a href="{{ route('products.edit', $product->id) }}" >Editar</a></div>
            @endif
        </div>

        <div class="contenedor-producto">
            <div id="contenedorImgPrincipal">
                <div class="imagen-principal"></div>
            </div>
            <div id="contenedorImgSecundarias">
                <div class="subImagen"></div>
                <div class="subImagen"></div>
            </div>
        </div>
    </div>

    </div>
    <script>
        /* SCRIPT GALERÍA IMÁGENES */
        let zFondos150 = ["url('/images/{{ $product->images[1]->path }}')",
            "url('/images/{{ $product->images[0]->path }}')"];
        let zFondos600 = ["url('/images/{{ $product->images[1]->path }}')",
            "url('/images/{{ $product->images[0]->path }}')"
        ];

        let imagenPrincipal = document.querySelectorAll(".imagen-principal")[0];
        let subImagenes = document.querySelectorAll(".subImagen");

        imagenPrincipal.style.background = `${zFondos600[0]} no-repeat center`;
        subImagenes[0].style.background = `${zFondos150[0]} center`;
        subImagenes[1].style.backgroundImage = zFondos150[1];

        subImagenes[0].addEventListener("mouseover", accion0);
        subImagenes[1].addEventListener("mouseover", accion1);

        function accion0() {
            imagenPrincipal.style.backgroundImage = zFondos600[0];
        }

        function accion1() {
            imagenPrincipal.style.backgroundImage = zFondos600[1];
        }

        /* SCRIPT BOTÓN CANTIDAD*/
        let i;

        function contadormas(iddeinput) {
            let cant = document.querySelector(`#${iddeinput}`);
            i = cant.value;
            i++;
            cant.value = i;
        }

        function contadormenos(iddeinput) {
            let cant = document.querySelector(`#${iddeinput}`);
            if (cant.value > 1) {
                i = cant.value;
                i--;
                cant.value = i;
            } else {
                cant.value = "0";
            }
        }
    </script>

@endsection
