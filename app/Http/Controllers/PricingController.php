<?php

namespace App\Http\Controllers;
 
use Response;
use Redirect;
use App\{Pricing, Country, Carrier, Category};
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PricingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pricings = Pricing::paginate(10);
        return view('pricing.index', compact('pricings'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pricings = Pricing::all();
        $carriers = Carrier::all();
        $countries = Country::all();
        $categories = Category::all();
        return view('pricing.create', compact('pricings', 'countries', 'categories', 'carriers'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->validate($request,[
            'price' => 'required'
        ]);
        $pricing = new Pricing();
        $pricing->price = $request->price;
        $pricing->country_id = $request->country_id;
        $pricing->carrier_id = $request->carrier_id;
        $pricing->category_id = $request->category_id;
        $pricing->save();
        return redirect()->route('pricing.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function show(Pricing $pricing)
    {
        $pricings = Pricing::all();
        return view('pricing.view', compact('pricings'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function edit(Pricing $pricing)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pricing $pricing)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pricing  $pricing
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pricing $pricing)
    {
        //
    }
    
    public function calculate(Request $request)
    {  
        $pricings = Pricing::all();
        $carriers = Carrier::all();
        $countries = Country::all();
        $categories = Category::all();
        return view('pricing.calculate', compact('pricings', 'countries', 'categories', 'carriers'));
    }
    public function priceCalculate(Request $request)
    {
        $carriers = Carrier::all();
        $countries = Country::all();
        $categories = Category::all();
        $pricings = Pricing::all();
        $price = Pricing::select('price')
        ->where('country_id', $request->country_id)
        ->where('carrier_id', $request->carrier_id)
        ->where('category_id', $request->category_id)
        ->first();     
        $count=Country::findOrFail($request->country_id);
        $carri=Carrier::findOrFail($request->carrier_id);
        $categ=Category::findOrFail($request->category_id);
        if (isset($price))
        {
            $price= $price->price;
            $weight=$request->weight;
            $price=$price*$weight;
        return view('pricing.calculated', compact('pricings', 'countries', 'categories', 'carriers', 'price', 'count', 'carri', 'categ'));
        }
        else
        {
            $price='No price found';
        return view('pricing.calculated', compact('pricings', 'countries', 'categories', 'carriers', 'price', 'count', 'carri', 'categ'));
        }
    }

    public function calculateBy() 
    {
       //
    }
}
