<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pool extends Model
{
    protected $table = "pools";
    protected $primarykey  = "id";
	protected $fillable = array('pool_name');
}
