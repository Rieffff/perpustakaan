<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class buku extends Model
{
    //
    protected $table = 'buku';
    protected $primaryKey = 'id_buku';
    protected $fillable = [ 'ISBN', 'judul', 'pengarang', 'penerbit', 'thn_terbit', 'stok', 'di_pinjam', 'id_ketegori', 'id_rak', 'id_kolom'];
}
