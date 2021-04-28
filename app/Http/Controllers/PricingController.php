<?php
 
namespace App\Http\Controllers;
use Response;
use Redirect;
use App\{Pricing, Country, Carrier, Category, Type, File};
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class PricingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function index()
    {
        $pricings = Pricing::where('type_id', '=', 1)->paginate(15);
        $prices = Pricing::where('type_id', '=', 2)->paginate(15);
        $prics = Pricing::where('carrier_id', '=', 1)->paginate(15);
        // dd ($pricings);
        return view('pricing.index', compact('pricings', 'prices', 'prics'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function create()
    {
        $pricings = Pricing::all();
        $carriers = Carrier::all();
        $countries = Country::all();
        $categories = Category::all();
        $files = File::all();
        $types = Type::all();
        return view('pricing.create', compact('pricings', 'countries', 'categories', 'carriers', 'types', 'files'));
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
        $pricing->file_id = $request->file_id;
        $pricing->type_id = $request->type_id;
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
        $files = File::all();
        $types = Type::all();
        return view('pricing.calculate', compact('pricings', 'countries', 'categories', 'carriers', 'types', 'files'));
    }
    public function priceCalculate(Request $request)
    {
        $carriers = Carrier::all();
        $countries = Country::all();
        $categories = Category::all();
        $types = Type::all();
        $files = File::all();
        $pricings = Pricing::all();
        $price = Pricing::select('price')
        ->where('country_id', $request->country_id)
        ->where('carrier_id', $request->carrier_id)
        ->where('category_id', $request->category_id)
        ->where('type_id', $request->type_id)
        ->where('file_id', $request->file_id)
        ->first();
        $count=Country::findOrFail($request->country_id);
        $carri=Carrier::findOrFail($request->carrier_id);
        $typ=Type::findOrFail($request->type_id);
        $fil=File::findOrFail($request->file_id);
        $categ=Category::findOrFail($request->category_id);
        if (isset($price))
        {
            $price= $price->price;
            $weight=$request->weight;
            $url="https://free.currconv.com/api/v7/convert?q=USD_BDT&compact=ultra&apiKey=1b884d1843928ea6bd5e";
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_URL,$url);
            $result=curl_exec($ch);
            curl_close($ch);
            $rate= json_decode($result, true);
            $BDT_from_USD= $price*$rate['USD_BDT'];
            if($request->type_id==1){
                $priceBD=$BDT_from_USD+$BDT_from_USD*(31.5/100);
                $price=round($priceBD,0,PHP_ROUND_HALF_UP);
            }else if($request->type_id==2){
                $priceBD=$BDT_from_USD+$BDT_from_USD*(16.5/100);
                $price=round($priceBD,0,PHP_ROUND_HALF_UP);
            }else{
                $price=round($BDT_from_USD,0,PHP_ROUND_HALF_UP);
            }
        return view('pricing.calculated', compact('pricings', 'countries', 'categories', 'carriers', 'price', 'count', 'carri', 'categ', 'types', 'files', 'fil', 'typ'));
        }
        else
        {
            $price='No price found';
        return view('pricing.calculated', compact('pricings', 'countries', 'categories', 'carriers', 'price', 'count', 'carri', 'categ', 'types', 'files','fil', 'typ'));
        }
    }
    public function calculateBy()
    {
       //
    }
}
