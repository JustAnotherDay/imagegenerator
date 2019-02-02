<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return $app->version();
});

$app->group(['prefix' => 'provinces'], function() use ($app) {
    $app->get('/', 'ProvincesController@index');
});

$app->group(['prefix' => 'users'], function() use ($app) {

    $app->post('login', 'UserController@index');
    $app->post('register', 'UserController@store');
    $app->post('update', 'UserController@update');
    $app->get('profile/{user_id}','UserController@show');

});

$app->group(['prefix' => 'touristspot'], function() use ($app) {

    $app->post('category', 'TouristSpotController@category');
    $app->get('{touristspot_id}', 'TouristSpotController@show');
    $app->post('review', 'TouristSpotController@create_review');
    $app->post('favorite', 'TouristSpotController@create_favorite');
    $app->get('reviews/{touristspot_id}', 'TouristSpotController@show_reviews');
    $app->post('nearby', 'TouristSpotController@nearby');
});

$app->group(['prefix' => 'tourguide'], function() use ($app) {

    $app->post('/', 'TourGuideTravelAgencyController@index');
    $app->get('{tourguide_id}', 'TourGuideTravelAgencyController@show');
    $app->post('search', 'TourGuideTravelAgencyController@search');
    
});

$app->group(['prefix' => 'events'], function() use ($app) {

    $app->post('/', 'EventsController@index');
    $app->get('events_notif', 'EventsController@events_notif'); //put event notif before dynamic query to prevent over shadowing
    $app->get('{event_id}', 'EventsController@show');
    $app->post('search', 'EventsController@search');
});