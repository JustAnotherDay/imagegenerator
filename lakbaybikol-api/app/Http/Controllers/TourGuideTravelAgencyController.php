<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\TourGuideTravelAgency;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

class TourGuideTravelAgencyController extends Controller
{

    public function index(Request $request) {

        $province_id = $request->province_id;
        $tour_guide_travel_agency = TourGuideTravelAgency::where('province_id', $province_id)->get();

        return array('tour_guide_travel_agency' => $tour_guide_travel_agency);
    }

    public function show($tourguide_id) {

        $tour_guide_detail = TourGuideTravelAgency::find($tourguide_id);

        $tour_guide_detail['tour_guide_agency_images'] = DB::table('tbl_tour_guide_agency_images')
                                                ->where('tour_guide_agency_id', $tourguide_id)
                                                ->limit(3)
                                                ->get();

        return array('tour_guide_detail' => $tour_guide_detail);

    }

    public function search(Request $request) {

        $search_text = $request->search_text;
        $province_id = $request->province_id;

        $search_data = TourGuideTravelAgency::where('tour_guide_agency_name', 'like', '%' . $search_text . '%')
                                            ->where('province_id', $province_id)
                                            ->get();

        return array('search_data' => $search_data);
    }

}