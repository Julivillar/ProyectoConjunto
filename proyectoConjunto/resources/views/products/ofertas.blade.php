@extends('layouts.layout')
@push('scripts')
    <script defer src="/js/loadNavProducts.js"></script>
    <script defer src="/js/loadOffers.js"></script>
@endpush
@push('styles')
    <link rel="stylesheet" type="text/css" href="/css/style1.css">
@endpush

@section('titulo', 'Listado de productos en oferta')

@section('cuerpo')

     <h2>Listado de productos en oferta</h2>

     <main>
        <div class="textContent">

        </div>
    </main>


@endsection
