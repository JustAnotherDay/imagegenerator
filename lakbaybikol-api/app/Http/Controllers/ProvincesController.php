<?php

namespace App\Http\Controllers;

use App\Provinces;
use Illuminate\Http\Response;
use Illuminate\Http\Request;

class ProvincesController extends Controller
{

    public function index() {
        $provinces = Provinces::all();

        return array('provinces' => $provinces);
    }

}
