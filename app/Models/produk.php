<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\kategori;

class produk extends Model
{
    //use HasFactory;
    protected $table = 'produk';
   protected $primaryKey = 'id_produk';
   
   public function kategori(){
      return $this->belongsTo('App\Kategori');
   }
}
