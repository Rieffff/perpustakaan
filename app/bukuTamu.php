<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class bukuTamu extends Model
{
    use HasFactory;
        protected $table = 'buku_tamu';
    protected $primaryKey = 'id';
    protected $fillable = [ 'id_kelas', 'nama', 'guru'];
    public function kelas()
    {
        return $this->belongsTo('App\kelas', 'id_kelas', 'id_kelas' );
    }
}
