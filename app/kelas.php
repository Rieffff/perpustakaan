<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kelas extends Model
{
    //
    
    protected $table = 'kelas';
    protected $primaryKey = 'id_kelas';
    protected $fillable = ['kelas'];

    public function bukuTamu()
    {
        return $this->hasOne('App\bukuTamu', 'id_kelas', 'id_kelas');
    }
}
