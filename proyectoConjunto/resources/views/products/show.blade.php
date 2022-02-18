@extends('layouts.layoutProduct')

@if(isset($user) && $user->role == 'Admin')
    @push('scripts')
        <script defer src='/js/validacionEdit.js'></script>
    @endpush
@endif

@section('titulo', 'Producto')

@section('cuerpo')
    <link rel="stylesheet" href="/css/style1.css">
    <div class="textContent" id="contenido">
        <div class="descripcion-producto">
            <h1 id="tituloProducto">{{ $product->name }}</h1>
            <p id="precioCalculado">
                @php
                    if ($product->offer != 1) {
                        $precioFinal = $product->price + $product->price * ($product->tax / 100);
                    } else {
                        $precioFinal = $product->price - $product->price * ($product->discount / 100);
                    }
                    print $precioFinal . ' €';
                @endphp
            </p>
            <p class="letraGris">Impuestos incluidos</p>
            @if ($product->stock <= 5)
                <p class="letraGris" id='avisoStock'>Solo quedan {{ $product->stock }} unidades</p>
            @else
                <p class="letraGris" id='avisoStock' style="display: none;">Solo quedan {{ $product->stock }} unidades
                </p>
            @endif

            <p class="textoCantidad">Cantidad</p>
            <div class="contenedorBotones">
                <div id="contenedorBtn">
                    <button class="btn focuseado" type="button" id="menos" onclick="contadormenos('cantidad')">-</button>
                    <input id="cantidad" class="focuseado" type="text" style="text-align: center;" value="1"
                        aria-label="Cantidad" readonly>
                    <button class="btn focuseado" type="button" id="mas" onclick="contadormas('cantidad')">+</button>
                </div>
                <div id="fixAdd"><button id="btnAdd"  onclick="addToCart({{$product}})">Añadir</button></div>
            </div>
            <p class="textoCantidad">Descripción</p>
            <p id="descripcion">{{ $product->description }}</p>
            @if (isset($user->role) && $user->role == 'Admin')
                <div class="btnEditar"><a href="#">Editar</a></div>
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
        <form action="{{ route('productsApi.update', $product->id) }}" enctype="multipart/form-data" method="post"
            class="formClass editForm">
            @csrf
            @method('put')
            <div class="form">
                <label for="name">Nombre: </label>
                <input type="text" name="name" id="name" value="{{ old('name') ? old('') : $product->name }}">
                <span id="errorName" class="errores"> El campo Nombre no puede estar vacio</span>
            </div>
            @error('nombre')
                Error: {{ $message }}
            @enderror

            <div class="form" id="descripcion">
                <label for="description">Descripcion: </label>
                <textarea name="description" id="description" cols="30" rows="2">
                            {{ old('description') ? old('description') : $product->description }}
                        </textarea>
                <span id="errorDescription" class="errores"> El campo Descripcion no puede estar vacio</span>
            </div>
            @error('descripcion')
                Error: {{ $message }}
            @enderror

            <div class="form">
                <label for="category">Categoria: </label>
                <select name="category" id="category" class="form-control">
                    @foreach ($categories as $category)
                        <option value="{{ $category->id }}"
                            {{ $category->id == $product->category->id ? 'selected' : '' }}>
                            {{ old('category') ? old('category') : $category->name }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="form">
                <label for="price">Precio: </label>
                <input type="number" min="0" step="any" name="price" id="price"
                    value="{{ old('price') ? old('') : $product->price }}">
                <span id="errorPrice" class="errores"> El campo Precio debe contener un numero positivo con un valor
                    mayor a 0 y con un
                    maximo de dos decimales</span>
            </div>
            @error('precio')
                Error: {{ $message }}
            @enderror

            <div class="form">
                <label for="discount">Descuento: </label>
                <input type="number" min="0" max="100" step="any" name="discount" id="discount"
                    value="{{ old('discount') ? old('') : $product->discount }}">
                <span id="errorDiscount" class="errores"> El campo Descuento debe contener un numero positivo con un
                    valor mayor o igual a 0
                    y con un maximo de dos decimales</span>
            </div>
            @error('descuento')
                Error: {{ $message }}
            @enderror

            <div class="form">
                <label for="taxes">Impuesto: </label>
                <input type="number" min="0" max="100" step="any" name="taxes" id="taxes"
                    value="{{ old('taxes') ? old('') : $product->tax }}">
                <span id="errorTaxes" class="errores"> El campo Impuesto debe contener un numero positivo con un
                    valor mayor o igual a 0 y
                    con un maximo de dos decimales</span>
            </div>
            @error('descuento')
                Error: {{ $message }}
            @enderror

            <div class="form">
                <label for="stock">Existencias: </label>
                <input type="number" name="stock" id="stock" value="{{ old('stock') ? old('') : $product->stock }}">
                <span id="errorStock" class="errores"> El campo Existencias debe contener un numero entero positivo
                    con un valor mayor o
                    igual a 0</span>
                @error('existencias')
                    Error: {{ $message }}
                @enderror
            </div>

            <div class="form">
                <label for="visibilidad">Visibilidad</label>
                <input type="checkbox" name="visibility" checked>
            </div>

            <div class="form">
                <label for="oferta">Oferta</label>
                <input type="checkbox" name="offer" checked>
            </div>

            <div class="form">
                <label for="image">Subir imagen</label>
                <input type="file" name="images[]" multiple>
                <span id="errorImage" class="errores"> El campo Imagen debe contener un archivo de tipo imagen</span>
            </div>
            @error('imagen')
                Error: {{ $message }}
            @enderror

            <div class="form">
                <label for="guardar"></label>
                <input type="submit" id="botonGuardar" value="Guardar" name="guardar" id="guardar" required>
            </div>
            <div class="form">
                <label for="cancelar"></label>
                <button id="botonCancelar" id="cancelar" name="cancelar">Cancelar</button>
            </div>
        </form>
    </div>

    </div>
    <script>
        /* SCRIPT GALERÍA IMÁGENES */
        let zFondos150 = ["url('/images/{{ $product->images[1]->path }}')",
            "url('/images/{{ $product->images[0]->path }}')"
        ];
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

        let cart = [];
        function addToCart(product) {
            let amount, item;
            //console.log(product);
           if (cart.some((item)=>item.id === product.id)) {
                amount = Number(document.querySelector('#cantidad').value);
                let productos = JSON.parse(localStorage[product.name]);
                productos.amount = amount;
                localStorage.removeItem(product.name);
                localStorage.setItem(product.name, JSON.stringify(productos));
           }else{
                item = product;
                amount = Number(document.querySelector('#cantidad').value);
                cart.push({
                    ... item,
                    amount ,
                });
                localStorage.setItem(product.name, JSON.stringify(cart));
           }
           let numCarrito = localStorage.length;
           document.querySelector('#numCarrito').textContent = numCarrito;
        }
    </script>

@endsection
