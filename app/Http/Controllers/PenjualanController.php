<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Models\Penjualan;
use App\Models\produk;
use App\Models\member;
use App\Models\PenjualanDetail;

class PenjualanController extends Controller
{
    public function index()
    {
       return view('penjualan.index');
    }

    public function listData()
    {

    //   $penjualan = Penjualan::leftJoin('users', 'users.id', '=', 'penjualan.id_user')
    //      ->select('users.*', 'penjualan.*', 'penjualan.created_at as tanggal')
    //      ->orderBy('penjualan.id_penjualan', 'desc')
    //      ->get();
    $penjualan = Penjualan::leftJoin('users', 'users.id', '=', 'penjualan.id_user')
          ->join('penjualan_detail','penjualan_detail.id_penjualan', '=', 'penjualan.id_penjualan')
          ->Join('produk', 'produk.kode_produk', '=', 'penjualan_detail.kode_produk')
          ->leftJoin('member','member.kode_member', '=', 'penjualan.kode_member')
         ->select('users.*', 'member.*','penjualan.*','penjualan_detail.*','produk.*', 'penjualan.created_at as tanggal')
         ->orderBy('penjualan.id_penjualan', 'desc')
         ->get();
      $no = 0;
      $data = array();

      foreach($penjualan as $list){
        $no ++;
        $row = array();
        $row[] = $no;
        $row[] = tanggal_indonesia(substr($list->tanggal, 0, 10), false);
       // $row[] = substr($list->tanggal, 0, 10);
        // $row[] = $list->kode_member;
        // $row[] = $list->total_item;
        // $row[] = "Rp. ".format_uang($list->total_harga);
        $row[] = $list->nama;
        $row[] = $list->kode_produk;
        $row[] = $list->nama_produk;
        $row[] = $list->jumlah;
        $row[] = "Rp. ".format_uang($list->harga_jual);
        $row[] = $list->diskon."%";
        $row[] = "Rp. ".format_uang($list->bayar);
        $row[] = $list->name;
        $row[] = '<div class="btn-group">
                <a onclick="showDetail('.$list->id_penjualan.')" class="btn btn-primary btn-sm"><i class="fa fa-eye"></i></a>
                <a onclick="deleteData('.$list->id_penjualan.')" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
               </div>';
        $data[] = $row;
      }

      $output = array("data" => $data);
      return response()->json($output);
    }

    public function show($id)
    {

      $detail = PenjualanDetail::leftJoin('produk', 'produk.kode_produk', '=', 'penjualan_detail.kode_produk')
         ->where('id_penjualan', '=', $id)
         ->get();
      $no = 0;
      $data = array();
      foreach($detail as $list){
        $no ++;
        $row = array();
        $row[] = $no;
        $row[] = $list->kode_produk;
        $row[] = $list->nama_produk;
        $row[] = "Rp. ".format_uang($list->harga_jual);
      // $row[] = ($list->harga_jual);
        $row[] = $list->jumlah;
        $row[] = "Rp. ".format_uang($list->sub_total);
       // $row[] = ($list->sub_total);
        $data[] = $row;
      }

      $output = array("data" => $data);
      return response()->json($output);
    }

    public function destroy($id)
    {
       $penjualan = Penjualan::find($id);
       $penjualan->delete();

       $detail = PenjualanDetail::where('id_penjualan', '=', $id)->get();
       foreach($detail as $data){
         $produk = Produk::where('kode_produk', '=', $data->kode_produk)->first();
         $produk->stok += $data->jumlah;
         $produk->update();
         $data->delete();
       }
    }

   }
