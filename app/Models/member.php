<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class member extends Model
{
    //use HasFactory;
    protected $table = 'member';
    protected $primaryKey ='id_member';

    public function penjualan(){
        return $this->hasMany('App\Penjualan', 'id_supplier');
    }
}
