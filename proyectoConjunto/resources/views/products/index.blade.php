@extends('layouts.layout')
@push('scripts')
    @if (isset($category))
        <script>
            let currentCategory = {{ $category }};
        </script>
    @else
        <script>
            let currentCategory = 0;
        </script>
    @endif

    <script defer src="/js/loadNavProducts.js"></script>


    @if (isset($user->role) && $user->role == 'Admin')
        <script defer src="/js/indexAdmin.js"></script>
    @else
        <script defer src="/js/index.js"></script>
    @endif
@endpush
@push('styles')
    <link rel="stylesheet" type="text/css" href="css/style1.css">
@endpush

@section('titulo', 'Listado de productos')

@section('cuerpo')

    <div class="textContent" id="contenido">

    </div>
    <div id="containerButtonLoad"><button id="loadButton" class="focuseado" tabindex="2">Cargar Más</button></div>

@endsection

