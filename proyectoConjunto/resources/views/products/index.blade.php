@extends('layouts.layout')

@push('scripts')
    <script defer src="/js/index.js"></script>
@endpush
@push('styles')
    <link rel="stylesheet" type="text/css" href="css/style.css">
@endpush

@section('titulo', 'Listado de productos')

@section('cuerpo')

    <main>
        <div class="textContent">

        </div>
        <button id="loadButton">Cargar Mas</button>
    </main>

@endsection
