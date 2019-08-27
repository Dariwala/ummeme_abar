<?php

namespace App\Modules\Service\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;


use App\Models\commonModules;
use DB;

use Exception;

use App\Http\Controllers\PhoneEmailIcon;
use App\Http\Controllers\BanglaConverter;

class commonModulesController extends Controller
{
    public function index()
    {
        $data = commonModules::first();
        
        return view('service::commonModules.commonModules', compact('data'));
    }
    
    public function update(Request $request)
    {
        try{
            
            $data = commonModules::first();
            
            if($data == null){
                $data = new commonModules;
            }
            
            $data->vision           = PhoneEmailIcon::handlePhoneandEmail($request->vision_description,FALSE,'');
            $data->b_vision         = PhoneEmailIcon::handlePhoneandEmail($request->vision_description,TRUE,$request->b_vision_description);
            $data->contact          = PhoneEmailIcon::handlePhoneandEmail($request->contact_description,FALSE,'');
            $data->b_contact        = PhoneEmailIcon::handlePhoneandEmail($request->contact_description,TRUE,$request->b_contact_description);
            $data->appointment      = PhoneEmailIcon::handlePhoneandEmail($request->appointment_description,FALSE,'');
            $data->b_appointment    = PhoneEmailIcon::handlePhoneandEmail($request->appointment_description,TRUE,$request->b_appointment_description);
            $data->serviceEntry     = PhoneEmailIcon::handlePhoneandEmail($request->serviceEntry_description,FALSE,'');
            $data->b_serviceEntry   = PhoneEmailIcon::handlePhoneandEmail($request->serviceEntry_description,TRUE,$request->b_serviceEntry_description);
            $data->faq              = PhoneEmailIcon::handlePhoneandEmail($request->faq_description,FALSE,'');
            $data->b_faq            = PhoneEmailIcon::handlePhoneandEmail($request->faq_description,TRUE,$request->b_faq_description);
            $data->serviceList      = PhoneEmailIcon::handlePhoneandEmail($request->serviceList_description,FALSE,'');
            $data->b_serviceList    = PhoneEmailIcon::handlePhoneandEmail($request->serviceList_description,TRUE,$request->b_serviceList_description);
            $data->latest_news      = PhoneEmailIcon::handlePhoneandEmail($request->latestNews_description,FALSE,'');
            $data->b_latest_news    = PhoneEmailIcon::handlePhoneandEmail($request->latestNews_description,TRUE,$request->b_latestNews_description);
            $data->notice           = PhoneEmailIcon::handlePhoneandEmail($request->notice_description,FALSE,'');
            $data->b_notice         = PhoneEmailIcon::handlePhoneandEmail($request->notice_description,TRUE,$request->b_notice_description);
            $data->report_delivery  = PhoneEmailIcon::handlePhoneandEmail($request->report_delivery,FALSE,'');
            $data->b_report_delivery = PhoneEmailIcon::handlePhoneandEmail($request->report_delivery,TRUE,$request->b_report_delivery);
            $data->emergency_helpline  = PhoneEmailIcon::handlePhoneandEmail($request->emergency_description,FALSE,'');
            $data->b_emergency_helpline= PhoneEmailIcon::handlePhoneandEmail($request->emergency_description,TRUE,$request->b_emergency_description);
            
            $data->save();
            
            $message = "Edited Successfully.";
            
        }catch(Exception $e){
            $message = "Failed to Update Data";
        }
        
        $data = commonModules::first();
        
        return view('service::commonModules.commonModules', compact('data', 'message'));
    }

}
