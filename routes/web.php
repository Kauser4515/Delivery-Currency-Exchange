<?php
Auth::routes();

Route::get('/','PricingController@calculate')->name('price.calculate');
Auth::routes();
Route::get('admin', "Auth\LoginController@showLoginForm");
/*Calculator Rout Start*/
	Route::resource('pricing', 'PricingController');
	Route::get('calculate', 'PricingController@calculate')->name('price.calculate');
	Route::get('priceCalculate', 'PricingController@priceCalculate')->name('priceCalculate');
	Route::resource('country', 'CountryController');
	Route::resource('carrier', 'CarrierController');
	Route::resource('category', 'CategoryController');
	Route::resource('test', 'TestController');
	Route::resource('type', 'TypeController');
	Route::resource('file', 'FileController');
/*Admin Rout Start*/
	Route::view('/dashboard', 'dashboard');
Route::group(['prefix'=>'admin', 'as' => 'admin.'], function()
{
    Route::resource('user', 'UserController');
    Route::resource('logo', 'LogoController');
    Route::resource('footer', 'FooterController');
});
	Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');
