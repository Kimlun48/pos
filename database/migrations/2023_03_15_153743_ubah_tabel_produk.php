<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('produk', function(Blueprint $table){
            // $table ->dropColumn('kode_produk');
            // $table ->bigInteger ('kode_produk')->change();
            $table -> string ('kode_produk', 10)->change();
            $table -> decimal ('stok',10,2)-> change();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
