<?php

namespace App\Modules\Frontend\Http\Controllers\ServiceDetails;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\Pharmacynew;
use App\Models\PharmacynewPhone;
use App\Models\PharmacynewEmail;
use App\Models\PharmacynewDoctor;
use App\Models\District;
use App\Models\SubDistrict;
use App\Models\PharmacynewProduct;
use App\Models\PharmacynewService;
use App\Models\PharmacynewNotice;
use DB;

use App\Http\Controllers\PhoneEmailIcon;

class FrontendPharmacynewController extends Controller
{
    public function viewPharmacynew($pharmacynew_id,$subdistrict_id)
    {

        $total_result       = DB::table('pharmacynew')->where('subdistrict_id', $subdistrict_id)->count();
        $aside_results      = Pharmacynew::with('subDistrict')->where('subdistrict_id', $subdistrict_id)->get();

        $pharmacynew        = Pharmacynew::find($pharmacynew_id);

        $temp = $pharmacynew->pharmacynew_description;
        $pharmacynew->pharmacynew_description = PhoneEmailIcon::handlePhoneandEmail($pharmacynew->pharmacynew_description,FALSE,'');
        $pharmacynew->b_pharmacynew_description = PhoneEmailIcon::handlePhoneandEmail($temp,TRUE,$pharmacynew->b_pharmacynew_description);

        $phones             = DB::table('pharmacynew_phone')->where('pharmacynew_id', $pharmacynew_id)->get();
        $emails             = DB::table('pharmacynew_email')->where('pharmacynew_id', $pharmacynew_id)->get();
        $notices            = PharmacynewNotice::where('pharmacynew_id', $pharmacynew_id)->get();

        $doctors            = PharmacynewDoctor::with('medicalSpecialist','department')->where('pharmacynew_id', $pharmacynew_id)->get();
        $products           = PharmacynewProduct::where('pharmacynew_id', $pharmacynew_id)->get();
        $pharmacynew_id     = $pharmacynew_id;

        return view('frontend::ServiceDetails.pharmacynew',compact('pharmacynew','phones','emails','pharmacynew_id','notices','total_result','aside_results', 'products', 'doctors'));

    }
}
