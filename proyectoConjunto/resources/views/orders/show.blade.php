@extends('layouts.layout')

@section('titulo', 'Producto')

@section('cuerpo')
    <link rel="stylesheet" href="{{ asset('css/style1.css') }}">
    <div class="textContent">
        @php
            $total = 0;
        @endphp
        <table id="tablaPedidos">
            <tr id="encabezadosTabla">
                <td>Lineas</td>
                <td>Cantidad</td>
                <td>Precio</td>
                <td>Total</td>
            </tr>
            @foreach ($order->orderLines as $lineas)
            <tr>
                <td>{{ $lineas->line_number }} </td>
                <td>{{ $lineas->amount }} </td>
                <td>{{ $lineas->price }}</td>
                <td>{{ $lineas->amount * $lineas->price }}</td>
            </tr>
            @php
                $total += $lineas->amount * $lineas->price;
            @endphp
            @endforeach


        </table>
        @php
            echo($total);
        @endphp
    </div>

@endsection
