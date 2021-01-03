<?php

namespace App\Modules\Service\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;

use App\Models\Notice;
use App\Models\District;
use App\Models\SubDistrict;
use App\Models\AirAmbulance;
use App\Models\Ambulance;
use App\Models\BloodBank;
use App\Models\BloodDonor;
use App\Models\EyeBank;
use App\Models\HerbalCenter;
use App\Models\Hospital;
use App\Models\Foreignmedical;
use App\Models\Optical;
use App\Models\Pharmacynew;
use App\Models\Physiotherapy;
use App\Models\Homeopathic;
use App\Models\MedicalSpecialist;
use App\Models\Pharmacy;
use App\Models\Addiction;
use App\Models\Gym;
use App\Models\Yoga;
use App\Models\Parlour;
use App\Models\SkinLaserCenter;
use App\Models\VaccinePoint;
use DB;

use Exception;

class NoticeController extends Controller
{
    public function index()
    {
        $notices = Notice::all();
        return view('service::notice.index', compact('notices'));
    }
    
    public function create()
    {   
        $districts      = District::all();
        $subdistricts   = SubDistrict::all();
        
        return view('service::notice.create', compact('districts','subdistricts'));
    }
    
    public function ajaxSubdistrict($id){
        
            
        if(Session('language')=='en') 
        {
            $subdisctricts = SubDistrict::select('sub_district_name as sub_district_name','id')->orderBy('sub_district_name','ASC')->where('district_id', $id)->get();
        }
        else
        {
            $subdisctricts = SubDistrict::select('b_sub_district_name as sub_district_name','id')->orderBy('sub_district_name','ASC')->where('district_id', $id)->get();
        }
        
        return Response::json($subdisctricts);
    }
    
    public function ajaxService($sub_district_id)
    {
        $service_names_bangla = array("২৪ ঘণ্টা ফার্মেসী",
                                      "অপটিক্‌স",
                                      "অ্যাডিকশন রিহ্যাবিলিটেশন সেন্টার",
                                      "অ্যাাম্বুলেন্স",
                                      "আই ব্যাংক",
                                      "ইয়োগা সেন্টার",
                                      "এয়ার অ্যাাম্বুলেন্স",
                                      "জিম",
                                      "ডক্টরস্‌ প্যানেল",
                                      "ফরেন মেডিক্যাল ইনফরমেশন সেন্টার",
                                      "ফার্মেসী",
                                      "ফিজিওথেরাপি অ্যান্ড রিহ্যাবিলিটেশন সেন্টার",
                                      "বিউটি পার্লার অ্যান্ড স্পা",
                                      "ব্লাড ডোনার",
                                      "ব্লাড ব্যাংক",
                                      "ভ্যাকসিনেশন সেন্টার",
                                      "স্কিন কেয়ার অ্যান্ড লেজার সেন্টার",
                                      "হারবাল মেডিসিন সেন্টার",
                                      "হেল্‌থ কেয়ার সেন্টার",
                                      "হোমিওপ্যাথিক মেডিসিন সেন্টার");
        $service_names_english = array("24 Hours Pharmacy","Addiction Rehabilitation Center","Air Ambulance","Ambulance","Beauty Parlour & Spa","Blood Bank","Blood Donor",
                                        "Doctors Panel","Eye Bank","Foreign Medical Information Center"
                                      ,"Gym","Health Care Center","Herbal Medicine Center","Homeopathic Medicine Center","Optics"
                                      ,"Pharmacy","Physiotherapy & Rehabilitation Center","Skin Care & Laser Center","Vaccination Center","Yoga Center");
        
                                      
        $indices_of_services_in_drop_down = array(7,17,12,1,5,20,2,15,8,14,18,19,13,4,3,10,11,9,6,16);

        $services = array();

        $arr_length = count($indices_of_services_in_drop_down);

        
        for($i = 0; $i < $arr_length; $i = $i + 1)
        {
            if($i == 0){
                $number_of_entries = Pharmacy::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 1){
                $number_of_entries = Optical::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 2){
                $number_of_entries = Addiction::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 3){
                $number_of_entries = Ambulance::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 4){
                $number_of_entries = EyeBank::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 5){
                $number_of_entries = Yoga::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 6){
                $number_of_entries = AirAmbulance::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 7){
                $number_of_entries = Gym::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 8){
                $number_of_entries = MedicalSpecialist::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 9){
                $number_of_entries = Foreignmedical::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 10){
                $number_of_entries = Pharmacynew::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 11){
                $number_of_entries = Physiotherapy::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 12){
                $number_of_entries = Parlour::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 13){
                $number_of_entries = BloodDonor::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 14){
                $number_of_entries = BloodBank::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 15){
                $number_of_entries = VaccinePoint::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 16){
                $number_of_entries = SkinLaserCenter::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 17){
                $number_of_entries = HerbalCenter::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 18){
                $number_of_entries = Hospital::where('subdistrict_id',$sub_district_id)->count();
            }
            else if($i == 19){
                $number_of_entries = Homeopathic::where('subdistrict_id',$sub_district_id)->count();
            }
            if($number_of_entries != 0)
            {
                if(Session('language') == 'en')
                {
                    array_push($services,array($service_names_english[$i],$indices_of_services_in_drop_down[$i]));
                }
                else
                {
                    array_push($services,array($service_names_bangla[$i],$indices_of_services_in_drop_down[$i]));
                }
            }
        }

        return Response::json($services);
    }

    public function store(Request $request)
    {   
        $this->validate($request, [
            'district_id'           => 'required',
            'sub_district_id'       => 'required',
            'service_provider'      => 'required',
            'thumbnail'             => 'required',
        ]);
        
        $notice                     = new Notice();
        $notice->district_id        = $request->district_id;
        $notice->sub_district_id    = $request->sub_district_id;
        $notice->service_provider   = $request->service_provider;
        $notice->title              = $request->title;
        $notice->b_title            = $request->b_title;
        $notice->details            = $request->details;
        $notice->b_details          = $request->b_details;
        
        if($request->hasFile('thumbnail')){
            $image = $request->file('thumbnail');
            $imageName = time().".".$image->getClientOriginalExtension();
            $directory = 'uploads/notice/';
            $image->move($directory, $imageName);
            $imageUrl = $directory.$imageName;
            $notice->thumbnail = $imageUrl;
        }
        
        $notice->save();
        
        if($notice->save()){
            return redirect()
                    ->route('notice_index')
    				->with('flash_message', 'Added Successfully.')
    				->with('flash_notification', 'success');
        }else{
            return redirect()
                    ->route('notice_index')
    				->with('flash_message', 'Sorry, Something went wrong!')
    				->with('flash_notification', 'danger');
        }
        
    }
    
    public function edit($id)
    {   
        $districts      = District::all();
        $subdistricts   = SubDistrict::all();
        $notice         = Notice::find($id);
        return view('service::notice.edit', compact('districts','subdistricts','notice'));
    }

    
    public function update(Request $request, $id)
    {   
        $this->validate($request, [
            'district_id'           => 'required',
            'sub_district_id'       => 'required',
            'service_provider'      => 'required',
        ]);
        
        $notice                     = Notice::find($id);
        $notice->district_id        = $request->district_id;
        $notice->sub_district_id    = $request->sub_district_id;
        $notice->service_provider   = $request->service_provider;
        $notice->title              = $request->title;
        $notice->b_title            = $request->b_title;
        $notice->details            = $request->details;
        $notice->b_details          = $request->b_details;
        
        if($request->hasFile('thumbnail')){
            $notice  = Notice::find($id);
            
            if(isset($notice->thumbnail)){
                unlink($notice->thumbnail);
            }
            
            $image = $request->file('thumbnail');
            $imageName = time().".".$image->getClientOriginalExtension();
            $directory = 'uploads/notice/';
            $image->move($directory, $imageName);
            $imageUrl = $directory.$imageName;
            $notice->thumbnail = $imageUrl;
        }
        
        $notice->save();
        
        if($notice->save()){
            return redirect()
                    ->route('notice_index')
    				->with('flash_message', 'Edited Successfully.')
    				->with('flash_notification', 'success');
        }else{
            return redirect('notice_index')
                    ->route('notice_index')
    				->with('flash_message', 'Sorry, Something went wrong!')
    				->with('flash_notification', 'danger');
        }
        
    }
    
    public function delete($id)
    {   
        
        $notice         = Notice::find($id);
        
        if($notice->delete()){
            
            if(isset($notice->thumbnail)){
                unlink($notice->thumbnail);
            }
            
            return redirect()
                    ->route('notice_index')
    				->with('flash_message', 'Deleted Successfully.')
    				->with('flash_notification', 'success');
        }else{
            return redirect()
                    ->route('notice_index')
    				->with('flash_message', 'Sorry, Something went wrong!')
    				->with('flash_notification', 'danger');
        }
        
    }
    
    public function noticeFrontend($id, $sub_district_id){
        $notice_all     = Notice::where('sub_district_id',$sub_district_id)->orderBy('id','DESC')->get();
        $total_notice   = Notice::where('sub_district_id', $sub_district_id)->count();
        $notice         = Notice::find($id);
        $notice_id      = $id;
        
        return view('service::notice.notice', compact('notice_all', 'total_notice','notice','notice_id'));
    }

}
