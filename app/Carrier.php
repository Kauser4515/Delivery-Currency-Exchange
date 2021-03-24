<?php

namespace App;
use Pricing;
use Country;

use Illuminate\Database\Eloquent\Model;

class Carrier extends Model
{
    public function pricing()
	    {
	        return $this->hasMany('App\Pricing');
	    }
	public function country()
	    {
	        return $this->hasMany('App\Country');
	    }
}
