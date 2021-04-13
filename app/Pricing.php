<?php

namespace App;
use Country;
use Carrier;
use Category;

use Illuminate\Database\Eloquent\Model;

class Pricing extends Model
{
	protected $fillable = [
        'price'
    ];
    public function country()
	    {
	        return $this->belongsTo('App\Country');
	    }
	public function carrier()
	    {
	        return $this->belongsTo('App\Carrier');
	    }
	public function type()
	    {
	        return $this->belongsTo('App\Type');
	    }
	public function file()
	    {
	        return $this->belongsTo('App\File');
	    }
	public function category()
	    {
	        return $this->belongsTo('App\Category');
	    }
}
