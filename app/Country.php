<?php

namespace App;
use Pricing;
use Carrier;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
	protected $fillable = [
        'name'
    ];
    public function pricing()
	    {
	        return $this->hasMany('App\Pricing');
	    }
	    public function carrier()
	    {
	        return $this->hasMany('App\Carrier');
	    }
}
