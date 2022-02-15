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
{{-- @if (isset($category))
{
<script>
    currentCategory = {{ $category }};
    console.log(currentCategory + 'pues si');
</script>
}
@endif --}}


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
