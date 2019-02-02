<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Events;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use Carbon\Carbon;

class EventsController extends Controller
{

    public function index(Request $request) {

        $province_id = $request->province_id;
        $events = Events::where('province_id', $province_id)->orderBy('event_start_month', 'asc')->get();

        return array('events' => $events);
    }

    public function show($event_id) {

        $event_detail = Events::find($event_id);

        $event_detail['event_images'] = DB::table('tbl_events_images')
                                                ->where('event_id', $event_id)
                                                ->limit(3)
                                                ->get();

        return array('event_detail' => $event_detail);

    }

    public function search(Request $request) {

        $search_text = $request->search_text;
        $province_id = $request->province_id;

        $search_data = Events::where('event_name', 'like', '%' . $search_text . '%')
                            ->where('province_id', $province_id)
                            ->get();

        return array('search_data' => $search_data);
    }
    
    public function events_notif() {

        
        $from = Carbon::parse(Carbon::now()->format('Y-m-d'));
        $to = date_add(Carbon::parse(Carbon::now()->format('Y-m-d')),date_interval_create_from_date_string("3 days"));

        $events = Events::whereRaw('event_start_date >= ? AND event_end_date <= ?', [$from, $to])
                        // ->select('id'
                        // , 'event_name'
                        // , url('/') . '/image/' . event_image . ' as event_image'
                        // ) 
                        ->get();
         return array('events_notif' => $events);

    }

}