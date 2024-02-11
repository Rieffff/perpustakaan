<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class siswa extends Model
{
    //
    
    protected $table = 'siswa';
    protected $primaryKey = 'id_siswa';
    protected $fillable = ['nis','nama_siswa','jenis_kelamin','id_kelas'];
}
