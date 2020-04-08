<?php

namespace App\Modules\Frontendairambulance\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\AirAmbulance;
use App\Models\AirAmbulancePricing;
use App\Models\AirAmbulanceNotice;
use DB;

use App\Http\Controllers\PhoneEmailIcon;

class FrontendAirAmbulanceController extends Controller
{
    public function viewAirAmbulance($air_ambulance_id,$subdistrict_id)
    {
    	$total_result = DB::table('air_ambulance')->where('subdistrict_id', $subdistrict_id)->count();
    	$aside_results = AirAmbulance::with('subDistrict')->where('subdistrict_id', $subdistrict_id)->get();
        $air_ambulance = AirAmbulance::find($air_ambulance_id);

        $temp = $air_ambulance->air_ambulance_description;
        $air_ambulance->air_ambulance_description = PhoneEmailIcon::handlePhoneandEmail($air_ambulance->air_ambulance_description,FALSE,'');
        $air_ambulance->b_air_ambulance_description = PhoneEmailIcon::handlePhoneandEmail($temp,TRUE,$air_ambulance->b_air_ambulance_description);

        $phones     = DB::table('air_ambulance_phone')->where('air_ambulance_id', $air_ambulance_id)->get();
        $emails     = DB::table('air_ambulance_email')->where('air_ambulance_id', $air_ambulance_id)->get();

        $prices = AirAmbulancePricing::where('air_ambulance_id', $air_ambulance_id)->get();
    

        $notices = AirAmbulanceNotice::where('air_ambulance_id', $air_ambulance_id)->get();

        return view('frontendairambulance::air_ambulance',compact('air_ambulance', 'air_ambulance_id', 'phones','emails','prices','notices','total_result','aside_results'));
    }
}
