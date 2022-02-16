@extends('layouts.layout')
@push('scripts')
    @if (isset($user->role) && $user->role == 'Admin')
        <script defer src="/js/indexAdmin.js"></script>
    @else

        <script defer src="/js/index.js"></script>
    @endif
    <script defer src="/js/loadProducts.js"></script>
@endpush
@push('styles')
    <link rel="stylesheet" type="text/css" href={{asset('css/style1.css')}}>
@endpush


@section('titulo', 'Listado de productos')

@section('cuerpo')
<div class="textContent">

</div>

<div id="containerButtonLoad"><button id="loadButton">Cargar Más</button></div>


@endsection
