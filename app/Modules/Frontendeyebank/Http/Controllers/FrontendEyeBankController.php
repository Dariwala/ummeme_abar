<?php

namespace App\Modules\Frontendeyebank\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\EyeBank;
use App\Models\EyeBankNotice;
use DB;

use App\Http\Controllers\PhoneEmailIcon;

class FrontendEyeBankController extends Controller
{
    public function viewEyeBank($eye_bank_id,$subdistrict_id)
    {
    	$total_result = DB::table('eye_bank')->where('subdistrict_id', $subdistrict_id)->count();
    	$aside_results = EyeBank::with('subDistrict')->where('subdistrict_id', $subdistrict_id)->get();

        $eye_bank = EyeBank::find($eye_bank_id);

        $temp = $eye_bank->eye_bank_description;
        $eye_bank->eye_bank_description = PhoneEmailIcon::handlePhoneandEmail($eye_bank->eye_bank_description,FALSE,'');
        $eye_bank->b_eye_bank_description = PhoneEmailIcon::handlePhoneandEmail($temp,TRUE,$eye_bank->b_eye_bank_description);

        $phones     = DB::table('eye_bank_phone')->where('eye_bank_id', $eye_bank_id)->get();
        $emails     = DB::table('eye_bank_email')->where('eye_bank_id', $eye_bank_id)->get();

        $notices = EyeBankNotice::where('eye_bank_id', $eye_bank_id)->get();
        
        $subdistrict_id = $subdistrict_id;

        return view('frontendeyebank::eye_bank',compact('eye_bank','eye_bank_id','phones','emails','notices','total_result','aside_results', 'subdistrict_id'));
    }
}
