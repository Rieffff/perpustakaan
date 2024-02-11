<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kolom_rak extends Model
{
    //
    protected $table = 'kolom_rak';
    protected $primaryKey = 'id_kolom';
    protected $fillable = ['kolom'];
}
