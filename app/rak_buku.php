<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class rak_buku extends Model
{
    //
    protected $table = 'rak_buku';
    protected $primaryKey = 'id_rak';
    protected $fillable = ['rak'];
}
