<?php

namespace App;
use Pricing;
use Country;

use Illuminate\Database\Eloquent\Model;

class Carrier extends Model
{
	protected $fillable = [
        'id','name', 'status'
    ];
    public function pricing()
	    {
	        return $this->hasMany('App\Pricing');
	    }
	public function country()
	    {
	        return $this->hasMany('App\Country');
	    }
}
