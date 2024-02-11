<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detail_login extends Model
{
    //
    
    protected $table = 'detail_login';
    protected $primaryKey = 'id_detail_login';
    protected $fillable = ['keterangan','id'];
}
