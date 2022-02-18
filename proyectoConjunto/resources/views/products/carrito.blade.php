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

@endpush
@push('styles')
    <link rel="stylesheet" type="text/css" href="css/style1.css">
@endpush

@section('titulo', 'Listado de productos')

@section('cuerpo')

    <div class="textContent">

        <script>
            for (const key in localStorage) {
                //La key del localstorage
                //console.log(key);

                let objeto = JSON.parse(localStorage.getItem(key));
                //console.log(objeto);
                for (const atrib of objeto) {

                    let div = document.querySelector('.textContent');
                    let p = document.createElement('p');
                    p.textContent = `nombre: ${atrib.name} precio: ${atrib.price} cantidad: ${atrib.amount}`;
                    div.append(p);
                }
            }
        </script>

    </div>


@endsection
