@extends('layouts.layout')

@section('titulo', 'Producto')

@section('cuerpo')
    <script defer src="/js/show.js"></script>
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <div class="textContent">
        <h1>
            <a href="{{ route('categories.show', $product->category->id) }}"> {{ $product->category->name }} </a>
        </h1>

        <p>
            {{ $product->description }}
        </p>

        <p>
            Fecha: {{ $product->created_at }}
        </p>
        <p>
            @foreach ($product->images as $imagen)
                <img src="{{ asset('images/' . $imagen->path) }}" alt="">
            @endforeach
        </p>
        @if (isset($user->role) && $user->role == 'Admin')
            <a href="{{ route('products.edit', $product->id) }}">Editar</a>
        @else
            añadir al carrito
        @endif

    </div>
    <button id="loadButton">Cargar Mas</button>

@endsection
