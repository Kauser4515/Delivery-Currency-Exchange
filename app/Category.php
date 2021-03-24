<?php

namespace App;
use Pricing;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function pricing()
	    {
	        return $this->hasMany('App\Pricing');
	    }
}
