<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    public function pricing()
	    {
	        return $this->hasMany('App\Pricing');
	    }
}
