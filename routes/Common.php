<?php
 
// Switch between the included languages
Route::get('locale/{locale?}', 'LocaleController@change')->name('locale.change');

// Contact Us
Route::post('/contact_us', 'ContactUsController@send')->name('contact_us');

// To view img no need to login
Route::get('image/{path}', 'ImageController@show')->where('path', '.*')->name('image.show');

Route::group(['middleware' => ['ajax']], function(){
	// Use php helper functions from js
	Route::get('helper/getFromPHPHelper', 'Admin\AjaxController@ajaxGetFromPHPHelper')->name('helper.getFromPHPHelper');

	Route::get('cart/ajax/getTaxRate', 'Admin\ShippingZoneController@ajaxGetTaxRate')->name('ajax.getTaxRate');
});

Route::get('address/ajax/getCountryStates', 'AddressController@ajaxCountryStates')->name('ajax.getCountryStates')->middleware('ajax');

Route::group(['middleware' => ['auth']], function(){
	include('common/Image.php');
	include('common/Attachment.php');
	include('common/Address.php');
	include('common/Search.php');
	 Route::get('/cache-clear', function () {
             $exitCode1 = Artisan::call('route:cache');
             $exitCode2 = Artisan::call('config:cache');
              $exitCode3 = Artisan::call('view:clear');
              $exitCode4 = Artisan::call('optimize:clear');
             return 'Routes cache has been cleared';
        });
});
