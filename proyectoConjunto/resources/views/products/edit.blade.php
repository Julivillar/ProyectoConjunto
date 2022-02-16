@extends('layouts.layout')

@push('scripts')
    <script defer src="{{asset('js/validacionEdit.js')}}"></script>
@endpush
@push('styles')
    <link rel="stylesheet" type="text/css" href="/css/style1.css">
@endpush
@section('titulo', 'Actualizar')

@section('cuerpo')
<div class="textContent">
    <form action="{{route('products.update', $product->id)}}" enctype="multipart/form-data" method="post" class="formClass">
        @csrf
        @method('put')
        <div class="form">
            <label for="name">Nombre: </label>
            <input type="text" name="name" id="name" value="{{old('name')?old(''):$product->name}}">
            <span id="errorName" class="errores"> El campo Nombre no puede estar vacio</span>
        </div>
        @error('nombre') Error: {{$message}} @enderror

        <div class="form" id="descripcion">
            <label for="description">Descripcion: </label>
            <textarea name="description" id="description" cols="30" rows="2">
                {{ old('description')? old('description') : $product->description }}
            </textarea>
            <span id="errorDescription" class="errores"> El campo Descripcion no puede estar vacio</span>
        </div>
        @error('descripcion') Error: {{$message}} @enderror

        <div class="form">
            <label for="category">Categoria: </label>
            <select name="category" id="category" class="form-control">
                @foreach ($categories as $category)
                    <option value="{{$category->id}}" {{$category->id==$product->category->id?'selected':''}}>
                        {{old('category')?old('category'):$category->name}}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="form">
            <label for="price">Precio: </label>
            <input type="number" min="0" step="any" name="price" id="price" value="{{old('price')?old(''):$product->price}}">
            <span id="errorPrice" class="errores"> El campo Precio debe contener un numero positivo con un valor mayor a 0 y con un
                maximo de dos decimales</span>
        </div>
        @error('precio') Error: {{$message}} @enderror

        <div class="form">
            <label for="discount">Descuento: </label>
            <input type="number" min="0" max="100" step="any" name="discount" id="discount" value="{{old('discount')?old(''):$product->discount}}">
            <span id="errorDiscount" class="errores"> El campo Descuento debe contener un numero positivo con un valor mayor o igual a 0
                y con un maximo de dos decimales</span>
        </div>
        @error('descuento') Error: {{$message}} @enderror

        <div class="form">
            <label for="taxes">Impuesto: </label>
            <input type="number" min="0" max="100" step="any" name="taxes" id="taxes" value="{{old('taxes')?old(''):$product->tax}}">
            <span id="errorTaxes" class="errores"> El campo Impuesto debe contener un numero positivo con un valor mayor o igual a 0 y
                con un maximo de dos decimales</span>
        </div>
        @error('descuento') Error: {{$message}} @enderror

        <div class="form">
            <label for="stock">Existencias: </label>
            <input type="number" name="stock" id="stock" value="{{old('stock')?old(''):$product->stock}}">
            <span id="errorStock" class="errores"> El campo Existencias debe contener un numero entero positivo con un valor mayor o
                igual a 0</span>
            @error('existencias') Error: {{$message}} @enderror
        </div>

        <div class="form">
            <label for="visibilidad">Visibilidad</label>
            <input type="checkbox" name="visibility" checked >
        </div>
        @error('imagen') Error: {{$message}} @enderror

        <div class="form">
            <label for="image">Subir imagen</label>
            <input type="file" name="images[]" multiple>
            <span id="errorImage" class="errores"> El campo Imagen debe contener un archivo de tipo imagen</span>
        </div>
        @error('imagen') Error: {{$message}} @enderror

        <div class="form">
            <label for="guardar"></label>
            <input type="submit" id="botonGuardar" value="Guardar" name="guardar" id="guardar" required>
        </div>
    </form>
</div>
@endsection
