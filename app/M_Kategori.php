<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class M_Kategori extends Model
{
    //
    
    protected $table = 'kategori_buku';
    protected $primaryKey = 'id_kategori';
    protected $fillable = ['kategori', 'id_dealine'];
}
