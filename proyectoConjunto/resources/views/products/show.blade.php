@extends('layouts.layout')

@section('titulo', 'Producto')

@section('cuerpo')
    <h1>
        <a href="{{route('categories.show', $product->category->id)}}"> {{$product->category->name}} </a>
    </h1>

    <p>
        {{$product->description}}
    </p>

    <p>
        Fecha: {{$product->created_at}}
    </p>
    {{-- <form action="{{route('posts.destroy', $post->id)}}" method="post">
        @csrf
        @method('delete')
        <input type="submit" value="Eliminar">
    </form> --}}
    <a href="{{route('products.edit', $product->id)}}">Editar</a>
@endsection