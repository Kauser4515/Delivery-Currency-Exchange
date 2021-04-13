<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Fadion\Fixerio\Facades\Exchange;
use Fadion\Fixerio\Currency;

class Test extends Model
{
    protected $table = 'tests';
    protected $fillable = [
       'country', 'carrier'
    ];
}
