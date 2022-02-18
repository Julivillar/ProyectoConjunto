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
    <link rel="stylesheet" type="text/css" href="css/style1.css">
@endpush

@section('titulo', 'Listado de productos')

@section('cuerpo')

    <main>
        <div class="textContent">
            <table id="tablaPedidos">
                <tr id="encabezadosTabla">
                    <td>Numero de pedido</td>
                    <td>Fecha de pedido</td>
                    <td>Importe:</td>
                    <td>Detalles</td>
                </tr>

                @foreach ($user->orders as $order)
                    <tr>
                        <td>{{ $order->id }}</td>
                        <td>{{ $order->created_at }}</td>
                        <td>
                            @php
                                $total = 0;
                            @endphp
                            @for ($i = 0; $i < sizeof($order->orderLines); $i++)
                                @php
                                    $total += $order->orderLines[$i]->amount * $order->orderLines[$i]->price;
                                @endphp
                            @endfor
                            @php
                                echo $total;
                            @endphp


                        </td>
                        <td> <a href="{{ route('orders.show', $order->id) }}">Ver detalles</a></td>
                    </tr>
                @endforeach

            </table>

        </div>

    </main>

@endsection
{{-- @foreach ($user->orders as $order)
            <p>
                Pedido: {{$order->id}} <br>
                Fecha pedido: {{$order->created_at}} <br>
                Importe: A <br>
                @php
                   $total = $order->orderLines[1]->amount * $order->orderLines[1]->price;
                   print($total);
                @endphp
                <a href="{{route('orders.show', $order->id)}}">Ver detalles</a>
            </p>

            @endforeach --}}
