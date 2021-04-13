<?php

namespace App\Http\Controllers;

use App\Test;
use Fadion\Fixerio\Facades\Exchange;
use Fadion\Fixerio\Facades\Currency;
use Illuminate\Http\Request;
use Response;

class TestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {



        $url="https://free.currconv.com/api/v7/convert?q=USD_BDT&compact=ultra&apiKey=47cfd2148c9401f636fe";
$ch = curl_init();
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_URL,$url);
$result=curl_exec($ch);
curl_close($ch);
$rate= json_decode($result, true);
$BDT_from_USD= $rate['USD_BDT'];
$charge=round($BDT_from_USD,0,PHP_ROUND_HALF_UP);
        return ($BDT_from_USD);
        
// return view('test.index');






$tests = Test::all();
       $exchange = new Exchange(
            [
    // Base URI is used with relative requests
    'base_uri' => 'http://data.fixer.io/api/latest?access_key=f2540f8d2d750a5eeb769e0bee39bf52&format=1',
    ]);

        // $exchange->base(Currency::USD);
        // $exchange->symbols(Currency::EUR, Currency::GBP);
        $tests = $exchange;
        return ($tests);

        return view('test.index',compact('tests'));
        return ($tests);

// $exchange->base('EUR');
// $exchange->symbols('USD', 'EUR', 'GBP');
//         $rates = $exchange->get();
       // $rates = (new Exchange())->symbols(Currency::USD, Currency::GBP)->get();
       // $rates = (new Exchange())->get();             
 // $exchange = new Exchange();
        // $exchange->base(Currency::EUR);
        // $exchange->symbols(Currency::EUR, Currency::GBP);
        // $rates = $exchange->get();
        // $rates = Exchange::base(Currency::USD)->get();
        //$rates = (new Exchange())->symbols(Currency::USD, Currency::GBP)->get();
        // 
        return view('test.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tests = Test::all();
        return view('test.create', compact('tests'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $request->validate([
            'country' => 'required',
            'carrier' => 'required',
        ]);
        Test::create($request->all());
        return redirect()->back();
        // return json_encode(array(
        //     "statusCode"=>200
        // ));
    }
    

    /**
     * Display the specified resource.
     *
     * @param  \App\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function show(Test $test)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function edit(Test $test)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Test $test)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Test  $test
     * @return \Illuminate\Http\Response
     */
    public function destroy(Test $test)
    {
        //
    }

}
