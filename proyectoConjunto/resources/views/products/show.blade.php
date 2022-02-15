@extends('layouts.layout')

@section('titulo', 'Producto')

@section('cuerpo')
    <script defer src="/js/show.js"></script>
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <div class="textContent">
        <h1>
            {{ $product->name }}
        </h1>

        <p>
            {{ $product->description }}
        </p>

        <p>{{$product->price}} €</p>

        @if ($product->stock <=5)
        <p>
           <span> Solo quedan {{$product->stock}} unidades </span>
        </p>
        @endif


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


@endsection
