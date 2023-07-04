<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, inital-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <style>
        table.static {
            position: relative;
            border: 1px solid #543535;
        }
        </style>
        <title>CETAK DATA PENJUALAN</title>
        <body>
<div class="form group">

<h3 class="text-center">Laporan Pendapatan</h3>
<h4 class="text-center">Tanggal  {{ tanggal_indonesia($tanggal_awal) }} s/d {{ tanggal_indonesia($tanggal_akhir) }} </h4>
<table class="static" align="center" rules="all" border="1px" style="width:95%;">

{{-- <table class="table table-striped table_bordered"> --}}
<thead>
   <tr>
    <th>No</th>
    <th>Tanggal</th>
    <th>Penjualan</th>
    <th>Pembelian</th>
    <th>Pengeluaran</th>
    <th>Pendapatan</th>
   </tr>

   <tbody>
    @foreach($data as $row)
    <tr>
    @foreach($row as $col)
     <td>{{ $col }}</td>
    @endforeach
    </tr>
    @endforeach
   </tbody>
</table>

</body>
</html>
