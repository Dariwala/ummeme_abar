<?php

namespace App\Modules\Frontend\Http\Controllers\ServiceDetails;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Addiction;
use App\Models\AddictionService;
use App\Models\AddictionDoctor;
use App\Models\AddictionNotice;
use App\Models\MedicalSpecialist;
use DB;

use App\Http\Controllers\PhoneEmailIcon;

class FrontendAddictionController extends Controller
{
    public function viewAddiction($addiction_id,$subdistrict_id)
    {
    	$total_result = DB::table('addiction')->where('subdistrict_id', $subdistrict_id)->count();
    	$aside_results = Addiction::with('subDistrict')->where('subdistrict_id', $subdistrict_id)->get();

        $addiction = Addiction::find($addiction_id);

        $temp = $addiction->addiction_description;
        $addiction->addiction_description = PhoneEmailIcon::handlePhoneandEmail($addiction->addiction_description,FALSE,'');
        $addiction->b_addiction_description = PhoneEmailIcon::handlePhoneandEmail($temp,TRUE,$addiction->b_addiction_description);

        $phones = DB::table('addiction_phone')->where('addiction_id', $addiction_id)->get();
        $emails = DB::table('addiction_email')->where('addiction_id', $addiction_id)->get();
        $notices = AddictionNotice::where('addiction_id', $addiction_id)->get();
        $addiction_id = $addiction_id;

        return view('frontend::ServiceDetails.addiction',compact('addiction','phones','emails','addiction_id','notices','total_result','aside_results'));
    }
}
