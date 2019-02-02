<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\TouristSpot;
use App\TouristSpotReviews;
use App\UserFavorites;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

class TouristSpotController extends Controller
{

    public function category(Request $request) {

        $province_id = $request->province_id;
        $attraction_category = $request->attraction_category;
        $touristspot = TouristSpot::where('province_id', $province_id)
                                ->where('attraction_category', $attraction_category)
                                ->get();

        return array('tourist_spot' => $touristspot);
    }

    public function show($touristspot_id) {

        $touristspot = TouristSpot::find($touristspot_id);

        $touristspot['touristspot_reviews'] = TouristSpotReviews::where('attraction_id', $touristspot_id)
                                                                ->orderBy('attraction_rating', 'desc')
                                                                ->orderBy('id', 'desc') 
                                                                ->limit(5)
                                                                ->get();

        $touristspot['touristspot_images'] = DB::table('tbl_touristspot_images')
                                                ->where('attraction_id', $touristspot_id)
                                                ->limit(3)
                                                ->get();

        return array('touristspot_detail' => $touristspot);

    }

    public function create_review(Request $request) {
        $touristspot_reviews = new TouristSpotReviews;
        $touristspot_reviews->attraction_id = $request->attraction_id;
        $touristspot_reviews->attraction_rating = $request->attraction_rating;
        $touristspot_reviews->attraction_reviews = $request->attraction_reviews;
        $touristspot_reviews->reviewer_name = $request->reviewer_name;
        $touristspot_reviews->reviewer_id = $request->reviewer_id;
        $touristspot_reviews->date_created = date('Y-m-d');

        if ($touristspot_reviews->save()) {
            $touristspot = TouristSpot::where('id', $request->attraction_id)->first();
            $attraction_total_rating = $touristspot->attraction_total_rating + $touristspot_reviews->attraction_rating;
            $attraction_total_reviews = $touristspot->attraction_total_reviews + 1;
            $attraction_rating = round($attraction_total_rating/$attraction_total_reviews);
            $touristspot->attraction_rating = $attraction_rating;
            $touristspot->attraction_total_rating = $attraction_total_rating;
            $touristspot->attraction_total_reviews = $attraction_total_reviews;

            if ($touristspot->save()) {
                return array('is_save' => true, 'message' => 'You have successfully created a review.');
            } else {
                return array('is_save' => false, 'message' => 'Error while creating a review.');
            }

        } else {
            return array('is_save' => false, 'message' => 'Error while creating a review.');
        }
    }

    public function create_favorite(Request $request) {
        $attraction_exist = UserFavorites::where('user_id', $request->user_id)
                                        ->where('attraction_id', $request->attraction_id)
                                        ->first();
        if (empty($attraction_exist)) {
            $user_favorites = new UserFavorites;
            $user_favorites->user_id = $request->user_id;
            $user_favorites->user_name = $request->user_name;
            $user_favorites->attraction_id = $request->attraction_id;

            if ($user_favorites->save()) {
                return array('is_save' => true, 'message' => 'You have successfully added to your favorite.');
            } else {
                return array('is_save' => false, 'message' => 'Error while adding to your favorite.');
            }
        } else {
            return array('is_save' => false, 'message' => 'Already exist to your favorite.');
        }
    }

    public function show_reviews($touristspot_id) {

        $touristspot_reviews = TouristSpotReviews::where('attraction_id', $touristspot_id)->get();

        return array('touristspot_reviews' => $touristspot_reviews);

    }

    public function nearby(Request $request) {

        $attraction_lat = $request->attraction_lat;
        $attraction_long = $request->attraction_long;
        $attraction_id = $request->attraction_id;
        $attraction_type = $request->attraction_type;

        $nearby_data = DB::table('tbl_touristspot')
                        ->whereRaw("attraction_lat < ($attraction_lat + 5) AND attraction_lat > ($attraction_lat - 5) AND attraction_long < ($attraction_long + 5) AND attraction_long > ($attraction_long - 5) AND attraction_type = $attraction_type AND id != $attraction_id ORDER BY attraction_type")
                        ->limit(4)
                        ->get();
        return array('nearby_data' => $nearby_data);

    }
}
