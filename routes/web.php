<?php

use Illuminate\Routing\Controllers\Middleware;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\KategoriController;
Use App\Http\Middleware\CekUser;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/',  [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Auth::routes();

Route::group(['middleware' => 'web'], function(){
    Route::get('user/profil', [App\Http\Controllers\UserController::class, 'profil'])->name('user.profil');
    Route::patch('user/{id}/change', [App\Http\Controllers\UserController::class, 'changeProfile']);

    Route::get('transaksi/baru', [App\Http\Controllers\PenjualanDetailController::class, 'newSession'])->name('transaksi.new');
    Route::get('transaksi/{id}/data', [App\Http\Controllers\PenjualanDetailController::class, 'listData'])->name('transaksi.data');
    Route::get('transaksi/cetaknota', [App\Http\Controllers\PenjualanDetailController::class, 'printNota'])->name('transaksi.cetak');
    Route::get('transaksi/notapdf', [App\Http\Controllers\PenjualanDetailController::class, 'notaPDF'])->name('transaksi.pdf');
    Route::post('transaksi/simpan', [App\Http\Controllers\PenjualanDetailController::class, 'saveData']);
    Route::get('transaksi/loadform/{diskon}/{total}/{diterima}', [App\Http\Controllers\PenjualanDetailController::class, 'loadForm']);
    Route::resource('transaksi', 'App\Http\Controllers\PenjualanDetailController');


});
 

Route::group(['Middleware'=>['web', 'CekUser:1']],
function(){
    Route::get ('kategori/data', [App\Http\Controllers\KategoriController::class, 'listData'])->name('kategori.data');
    Route::resource('kategori', 'App\Http\Controllers\KategoriController');

    Route::get('produk/data', [App\Http\Controllers\ProdukController::class , 'listData'])->name('produk.data');
    Route::post('produk/hapus',[App\Http\Controllers\ProdukController::class, 'deleteSelected']);
    Route::post('produk/cetak',[App\Http\Controllers\ProdukController::class, 'printBarcode']);
    Route::resource('produk', 'App\Http\Controllers\ProdukController');

    Route::get('supplier/data', [App\Http\Controllers\SupplierController::class , 'listData'])->name('supplier.data');
    Route::resource('supplier', 'App\Http\Controllers\SupplierController');

    Route::get('member/data', [App\Http\Controllers\MemberController::class , 'listData'])->name('member.data');
    Route::post('member/cetak',[App\Http\Controllers\MemberController::class, 'printCard']);
    Route::resource('member', 'App\Http\Controllers\MemberController');

    Route::get('pengeluaran/data', [App\Http\Controllers\PengeluaranController::class , 'listData'])->name('pengeluaran.data');
    Route::resource('pengeluaran', 'App\Http\Controllers\PengeluaranController');

    Route::get('user/data', [App\Http\Controllers\UserController::class , 'listData'])->name('user.data');
    Route::resource('user', 'App\Http\Controllers\UserController');

    Route::get('pembelian/data', [App\Http\Controllers\PembelianController::class , 'listData'])->name('pembelian.data');
    Route::get('pembelian/{id}/tambah', [App\Http\Controllers\PembelianController::class, 'create']);
    Route::get('pembelian/{id}/lihat', [App\Http\Controllers\PembelianController::class, 'show']);
    Route::resource('pembelian', 'App\Http\Controllers\PembelianController');

    Route::get('pembelian_detail/{id}/data', [App\Http\Controllers\PembelianDetailController::class, 'listData'])->name('pembelian_detail.data');
    Route::get('pembelian_detail/loadform/{diskon}/{total}', [App\Http\Controllers\PembelianDetailController::class, 'loadform']);
    Route::resource('pembelian_detail', 'App\Http\Controllers\PembelianDetailController');

    Route::get('penjualan/data', [App\Http\Controllers\PenjualanController::class, 'listData'])->name('penjualan.data');
    Route::get('penjualan/{id}/lihat', [App\Http\Controllers\PenjualanController::class, 'show']);
    Route::resource('penjualan', 'App\Http\Controllers\PenjualanController');

    Route::get('laporan', [App\Http\Controllers\LaporanController::class, 'index'])->name('laporan.index');
    Route::post('laporan', [App\Http\Controllers\LaporanController::class, 'refresh'])->name('laporan.refresh');
    Route::get('laporan/data/{awal}/{akhir}', [App\Http\Controllers\LaporanController::class, 'listData'])->name('laporan.data'); 
    Route::get('laporan/pdf/{awal}/{akhir}', [App\Http\Controllers\LaporanController::class, 'exportPDF']);
 
    Route::resource('setting', 'App\Http\Controllers\SettingController');

});
 
//     //

// });

// 

