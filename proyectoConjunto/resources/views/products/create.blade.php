@extends('layouts.layout')

@push('scripts')
    <script defer src="{{asset('js/validacionProducto.js')}}"></script>
@endpush
@push('styles')
    <link rel="stylesheet" type="text/css" href="/css/style1.css">
@endpush
@section('titulo', 'Crear')

@section('cuerpo')
<div class="textContent" id="contenido">
    <h1 id="tituloEdit">Creacion de un nuevo Producto</h1>
        <form action="{{route('products.store')}}" method="post" enctype="multipart/form-data" class="formClass">
            @csrf
            <div class="form">
                <label for="name">Nombre: </label>
                <input type="text" name="name" id="name" required>
                <span id="errorName" class="errores"> El campo Nombre no puede estar vacio</span>
            </div>
            @error('nombre') Error: {{$message}} @enderror

            <div class="form">
                <label for="description">Descripcion: </label>
                <input type="text" name="description" id="description" required>
                <span id="errorDescription" class="errores"> El campo Descripcion no puede estar vacio</span>
            </div class="form">
            @error('descripcion') Error: {{$message}} @enderror

            <div class="form">
                <label for="category">Categoria: </label>
                <select name="category" id="category">
                    @foreach ($categories as $category)
                        <option value="{{$category->id}}">
                            {{ $category->name }}
                        </option>
                    @endforeach
                </select>
                <!-- <input type="text" name="category" id="category" required>
                <span id="errorCategory"> El campo Categoria no puede estar vacio</span> -->
            </div>
            <div class="form">
                <label for="price">Precio: </label>
                <input type="number" step="any" name="price" id="price" required>
                <span id="errorPrice" class="errores"> El campo Precio debe contener un numero positivo con un valor mayor a 0 y con un
                    maximo de dos decimales</span>
                @error('precio') Error: {{$message}} @enderror
            </div>

            <div class="form">
                <label for="discount">Descuento: </label>
                <input type="number" min="0" max="100" step="any" name="discount" id="discount" required>
                <span id="errorDiscount" class="errores"> El campo Descuento debe contener un numero positivo con un valor mayor o igual a 0
                    y con un maximo de dos decimales</span>
                @error('descuento') Error: {{$message}} @enderror
            </div>

            <div class="form">
                <label for="taxes">Impuesto: </label>
                <input type="number" min="0" max="100" step="any" name="taxes" id="taxes" required>
                <span id="errorTaxes" class="errores"> El campo Impuesto debe contener un numero positivo con un valor mayor o igual a 0 y
                    con un maximo de dos decimales</span>
                @error('descuento') Error: {{$message}} @enderror
            </div>

            <div class="form">
                <label for="stock">Existencias: </label>
                <input type="number" min="0" name="stock" id="stock" required>
                <span id="errorStock" class="errores"> El campo Existencias debe contener un numero entero positivo con un valor mayor o
                    igual a 0</span>
                @error('existencias') Error: {{$message}} @enderror
            </div>

            <div class="form">
                <label for="visibilidad">Visibilidad</label>
                <input type="checkbox" name="visibilidad" id="visibilidad" checked >
            </div>
            @error('imagen') Error: {{$message}} @enderror

            <div class="form">
                <label for="image">Subir imagen</label>
                <input type="file" name="images[]" multiple required>
                <span id="errorImage" class="errores"> El campo Imagen debe contener un archivo de tipo imagen</span>
            </div>
            @error('imagen') Error: {{$message}} @enderror

            <div class="form">
                <label for="enviar"></label>
                <input type="submit" value="Enviar" name="enviar" id="enviar" required>
            </div>
        </form>
</div>
@endsection
