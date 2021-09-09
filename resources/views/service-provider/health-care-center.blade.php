<form id="form_validation" method="post" action="{{route('service-health-care-center')}}" class="uk-form-stacked">
{!! csrf_field() !!}
<input type="hidden" name="subject" value="Health Care Center" />
@if(Session('language')=='en')
<!--<p style="font-size: 16px;font-weight: bold;">About</p>-->
<p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">About</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Type (Government/Private/Others)</label>
                <textarea type="text" name="ab_type" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="ab_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="ab_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Closed</label>
                <textarea type="text" name="ab_close" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold;">Contact Info</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Contact Info</p>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="name">Name </label>
                <textarea type="text" name="con_info_name" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="address">Address</label>
                <textarea type="text" name="con_info_address"address  class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">    
             <div class="parsley-row">
                <label for="contact_cumber">Contact Number </label>
                <textarea type="text" name="con_info_contact_number"  class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Emergency Number </label>
                <textarea type="text" name="con_info_emergency_number"  class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Hotline</label>
                <textarea type="text" name="con_info_hotline"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>       
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Time of Serial</label>
                <textarea type="text" name="con_info_time"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>       
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Serial Number</label>
                <textarea type="text" name="con_info_serial_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>       
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">E-mail</label>
                <textarea type="text" name="con_info_email"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 5px;">General Info</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">General Info</p>
    
    <p style="font-size: 16px;font-weight: bold">Indoor Consultation</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Time</label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Morning" name="general_info_time"id="val_radio_male" data-md-icheck ><span style="padding:5px">Morning</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="Evening" id="val_radio_male" data-md-icheck name="general_info_time"><span style="padding:5px">Evening</span></label> 
                 </span>
                 <br>
                <span  style="padding:5px 5px 5px 0px" class="icheck-inline">
                  <label  class="inline-label"><input type="radio"  value="Morning & Evening"id="val_radio_male" data-md-icheck name="general_info_time"><span style="padding:5px">Both</span></label>
              </span>
              <br>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Hour</label>
                <textarea type="text" name="general_info_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Working Day</label>
                <textarea type="text" name="general_info_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Closed</label>
                <textarea type="text" name="general_info_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Call to above number for serial</label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="general_info_call_serial"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="general_info_call_serial"><span style="padding:5px">NO</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Serial number is not given on the phone. Come directly to the serial </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="general_info_serial_number"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="general_info_serial_number"><span style="padding:5px">NO</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold">Outdoor Consultation</p>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Time</label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Morning" name="out_general_info_time"id="val_radio_male" data-md-icheck ><span style="padding:5px">Morning</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="Evening" id="val_radio_male" data-md-icheck name="out_general_info_time"><span style="padding:5px">Evening</span></label> 
                 </span>
                 <br>
                <span  style="padding:5px 5px 5px 0px" class="icheck-inline">
                  <label  class="inline-label"><input type="radio"  value="Morning & Evening"id="val_radio_male" data-md-icheck name="out_general_info_time"><span style="padding:5px">Both</span></label>
              </span>
              <br>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Hour</label>
                <textarea type="text" name="out_general_info_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Working Day</label>
                <textarea type="text" name="out_general_info_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Closed</label>
                <textarea type="text" name="out_general_info_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Call to above number for serial</label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="out_general_info_call_serial"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="out_general_info_call_serial"><span style="padding:5px">NO</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Serial number is not given on the phone. Come directly to the serial </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="out_general_info_serial_number"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="out_general_info_serial_number"><span style="padding:5px">NO</span></label> 
                 </span> 
            </div>
        </div>
    </div>

    
    <br>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left; margin-bottom: 2px;">Doctor (If Any)<br><small>Write details in the Doctors Panel</small></p>
     
    <br>
    
    <!--<p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left; margin-bottom: 2px;">Service</p>
    
    <br>-->
    
    <!--<p style="font-size: 16px;font-weight: bold">Ambulance</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Ambulance</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Service Area</label>
                <textarea type="text" name="amb_service_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Fare</label>
                <textarea type="text" name="amb_fare"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Fare Negotiable</label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="fare_negotiable" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="fare_negotiable"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Hour</label>
                <textarea type="text" name="amb_service_hour"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Working Day</label>
                <textarea type="text" name="amb_working_day"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Closed</label>
                <textarea type="text" name="amb_cont_close"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
    
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Contact Number</label>
                <textarea type="text" name="amb_cont_number"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">Facilities </p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Air Conditioned</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_condition" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_condition"><span style="padding:5px;">NO</span></label> 
                 </span>
                <span  style="padding:5px 5px 5px 0px" class="icheck-inline">
                
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Non Air Conditioned </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="no_air_condition" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="no_air_condition"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Medical Staff for Critical Care</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="medical_staf_cate" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="medical_staf_cate"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Oxygen Cylinder</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="oxygen_cylinder" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="oxygen_cylinder"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Stretcher</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="stretcher" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="stretcher"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Wheel Chair</label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="wheel_chair" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="wheel_chair"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">No outside ambulance is allowed during discharge of patients from hospital </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ambulance_outside" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ambulance_outside"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold">ICU Ambulance</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">ICU Ambulance</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Service Area</label>
                <textarea type="text" name="ac_amb_service_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Fare</label>
                <textarea type="text" name="ac_amb_fare"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Fare Negotiable</label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ac_fare_negotiable" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_fare_negotiable"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Hour</label>
                <textarea type="text" name="ac_amb_service_hour" class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Working Day</label>
                <textarea type="text" name="ac_amb_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Closed</label>
                <textarea type="text" name="ac_amb_cont_close"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
    
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Contact Number</label>
                <textarea type="text" name="ac_amb_cont_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;"> Facilities </p>
   
   
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Medical Staff for Critical Care</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ac_medical_staf_cate" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_medical_staf_cate"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Stretcher</label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ac_stretcher" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_stretcher"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Wheel Chair</label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ac_wheel_chair" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_wheel_chair"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
   
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">No outside ambulance is allowed during discharge of patients from hospital </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="icu_ambulance_outside" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="icu_ambulance_outside"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold">Air Ambulance</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Air Ambulance</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Service Area</label>
                <textarea type="text" name="air_amb_service_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Fare</label>
                <textarea type="text" name="air_amb_fare"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Fare Negotiable</label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_fare_negotiable" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_fare_negotiable"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Hour</label>
                <textarea type="text" name="air_amb_service_hour" class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Working Day</label>
                <textarea type="text" name="air_amb_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">Closed</label>
                <textarea type="text" name="air_amb_cont_close"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
    
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Contact Number</label>
                <textarea type="text" name="air_amb_cont_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;"> Facilities </p>
   
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ICU</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_amb_icu" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_amb_icu"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Normal</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_amb_normal" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_amb_normal"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
   
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Medical Staff for Critical Care</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_medical_staf_cate" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_medical_staf_cate"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Oxygen Cylinder</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_oxygen_cylinder" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_oxygen_cylinder"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Stretcher</label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_stretcher" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_stretcher"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
        <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Wheel Chair</label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="air_wheel_chair" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_wheel_chair"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    
    <!--<p style="font-size: 16px;font-weight: bold">Blood Bank</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Blood Bank</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Service Hour</label>
                <textarea type="text" name="blood_bank_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Working Day</label>
                <textarea type="text" name="blood_bank_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Closed</label>
                <textarea type="text" name="blood_bank_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Contact Number</label>
                <textarea type="text" name="blood_bank_contact_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">Diagnostic Test</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Diagnostic Test<br><small>Write Test Name, Rate, Preparation & Contact Number</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="diagnostic_test"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
    <!--<p style="font-size: 16px;font-weight: bold">Eye Bank</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Eye Bank</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Service Hour</label>
                <textarea type="text" name="eye_bank_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Working Day</label>
                <textarea type="text" name="eye_bank_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Closed</label>
                <textarea type="text" name="eye_bank_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">Contact Number</label>
                <textarea type="text" name="eye_bank_contact_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">Facilities</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Facilities</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ATM Booth </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_atm_booth" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_atm_booth"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Cafeteria  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_cafeteria" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_cafeteria"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
      <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Canteen  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_canteen" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_canteen"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
      <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Coffee Shop</label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_coffee_shop" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_coffee_shop"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
      <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Snacks Corner </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_snacks_conrner" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_snacks_conrner"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Day Care Center </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_day_care_center" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_day_care_center"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Car Parking  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_car_parking" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_car_parking"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Mosque  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_mosque" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_mosque"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Prayer Room </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_prayer_room" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_prayer_room"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Mortuary </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="facilities_mortuary" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_mortuary"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>

    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Health Check Up Package</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Health Check Up Package<br><small>Diagnostic test service is provided by the package for fixing the problem in the initial stage or to know the status of a person's health</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Advanced Stroke Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_adv_stroke" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_adv_stroke"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Breast Cancer Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_breast_cancer" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_breast_cancer"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Cardiac Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_cardiac" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_cardiac"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Cancer Screening-Male/Female  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_cancer" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_cancer"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Computerized Eye Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_eye_screening" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_eye_screening"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Cataract Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_cataract" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_cataract"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Corporate Health Check Up  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_corporate_hlt" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_corporate_hlt"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Child Check Up  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_child_chk" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_child_chk"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Diabetic Check Up  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_diabetic" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_diabetic"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Diabetic Eye Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_diabetic_eye" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_diabetic_eye"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Dry Eye Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_dry_eye" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_dry_eye"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Executive Basic Check Up-Male  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_basic_man" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_basic_man"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Executive Basic Check Up-Female  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_basic_woman" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_basic_woman"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Executive Premier Check Up-Male  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_premier_man" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_premier_man"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Executive Premier Check Up-Female  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_premier_woman" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_premier_woman"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Full Mouth Check Up with Caries Prevention-Children   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_full_mouth" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_full_mouth"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Glaucoma Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_glaucoma" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_glaucoma"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Liver Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_liver" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_liver"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Mouth Cancer Screening-Adult  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_mouth_cancer" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_mouth_cancer"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Oral & Dental Health Screening-Adult  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_oral_dental" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_oral_dental"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Osteoporosis Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_osteoporosis" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_osteoporosis"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Stroke Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_stroke" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_stroke"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Thyroid Screening  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_thyroid" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_thyroid"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Whole Body Check Up-Male (Below 45 Years)  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_body_less_45" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_body_less_45"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Whole Body Check Up-Male (Above 45 Years)  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_male_plus_45" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_male_plus_45"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Whole Body Check Up-Female (Below 35 Years)  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_female_less_35" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_female_less_35"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Whole Body Check Up-Female (Above 35 Years)  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_female_plus_35" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_female_plus_35"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="hlt_chk_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
     
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Home Service</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Home Service<br><small>Medical service is provided to the patient at home who is unable to go out because of illness, being old age or severe traffic jam</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Blood Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_blood_test" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_blood_test"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Stool Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_stool" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_stool"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Urine Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_urine" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_urine"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Blood Pressure Assessment  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_blood_pressure" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_blood_pressure"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Diabetes Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_diabetes" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_diabetes"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Weight Measurement  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_weight" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_weight"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Circumcision  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_circumcision" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_circumcision"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Nebulization  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_nebulization" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_nebulization"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> X-ray  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_xray" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_xray"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ECG  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_ecg" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_ecg"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Area </label>
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_serv_area"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_serv_area"> <span style="padding:5px">NO</span></label> 
                 </span>
                 -->
                 <textarea class="md-input" name="hm_serv_serv_area" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Charge </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_serv_charge"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_serv_charge"> <span style="padding:5px">NO</span></label> 
                 </span>
                 -->
                 <textarea class="md-input" name="hm_serv_serv_charge" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Charge Negotiable  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_serv_charge_negotiable" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_serv_charge_negotiable"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Hour </label> 
                <br>
                 <textarea class="md-input" name="hm_serv_serv_hour" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Working Day </label> 
                <br>
                 <textarea class="md-input" name="hm_serv_working_day" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="hm_serv_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="hm_serv_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
         
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;"> Medical Department</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Medical Department<br><small>Write Department Name</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="treat_dept_name"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
     
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Optical Shop</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Optical Shop</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="opt_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="opt_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="opt_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="opt_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Home Delivery Service </p>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Area</label>
                <textarea type="text" name="opt_home_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Delivery Charge</label>
                <textarea type="text" name="opt_home_delivery_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Delivery Charge Negotiable </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="opt_home_delivery_charge_nego" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="opt_home_delivery_charge_nego"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="opt_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="opt_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="opt_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="opt_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Out Patient Service</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Out Patient Service<br><small>Diagnostic test service is provided to other patients outside of the hospital</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Blood Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_blood_test" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_blood_test"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Stool Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_stool" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_stool"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Urine Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_urine" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_urine"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Blood Pressure Assessment  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_blood_pressure" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_blood_pressure"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Diabetes Test  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_diabetes" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_diabetes"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Weight Measurement  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_weight" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_weight"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Circumcision  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_circumcision" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_circumcision"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Nebulization  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_nebulization" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_nebulization"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> X-ray  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_xray" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_xray"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ECG  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_ecg" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_ecg"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Area </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_serv_area"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_serv_area"> <span style="padding:5px">NO</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="ops_serv_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Charge </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_serv_charge"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_serv_charge"> <span style="padding:5px">NO</span></label> 
                 </span>
                 -->
                 <textarea class="md-input" name="ops_serv_charge" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Charge Negotiable  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="ops_serv_charge_negotiable" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_serv_charge_negotiable"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Hour </label> 
                <br>
                 <textarea class="md-input" name="ops_serv_hour" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Working Day </label> 
                <br>
                 <textarea class="md-input" name="ops_working_day" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="ops_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="ops_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Pharmacy</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Pharmacy</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="pha_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="pha_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="pha_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="pha_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Home Delivery Service </p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Minimum Order Value (TK)</label>
                <textarea type="text" name="pha_order_tk" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Area</label>
                <textarea type="text" name="pha_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Delivery Charge</label>
                <textarea type="text" name="pha_delivery_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Delivery Charge Negotiable </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="pha_delivery_charge_nego" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="pha_delivery_charge_nego"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="pha_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="pha_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="pha_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="pha_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>   
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Physiotherapy & Rehabilitation Center</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Physiotherapy & Rehabilitation Center</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="prc_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="prc_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="prc_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="prc_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold;">Home Service</p>
    <p style="font-size: 16px; margin-bottom: 25px;">Patient can receive various medical advices and services staying at home</p>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Area</label>
                <textarea type="text" name="prc_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Charge</label>
                <textarea type="text" name="prc_service_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Charge Negotiable </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="prc_service_charge_nego" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="prc_service_charge_nego"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="prc_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="prc_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="prc_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="prc_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">Room Service (Ward, Cabin etc)</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Room Service<br>(Ward, Cabin etc)<br><small>Write Bed Name, Total Bed Number, Free Bed Number, Rent & Contact Number</small></p>
   
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="room_service_name"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
     <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Vaccination Center</p>-->
     <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Vaccination Center</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="vc_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="vc_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="vc_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="vc_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">Home Service </p>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Area</label>
                <textarea type="text" name="vc_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Charge</label>
                <textarea type="text" name="vc_service_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> Service Charge Negotiable </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="Yes" name="vc_service_charge_nego" id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="vc_service_charge_nego"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Service Hour</label>
                <textarea type="text" name="vc_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">Working Day </label>
                <textarea type="text" name="vc_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Closed</label>
                <textarea class="md-input" name="vc_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">Contact Number</label>
                <textarea class="md-input" name="vc_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">More Information<br><small>(If Any)</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message"></label>
                <textarea class="md-input" name="more_details" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    <br>
    <input  type="submit" class="md-btn md-btn-danger md-btn-large" name="submit"value="send" style="float:right;background: #FD0100;color: #fff;">

@else  
    <!--<p style="font-size: 16px;font-weight: bold;">সম্বন্ধে </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">সম্বন্ধে</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">প্রকার (সরকারি/বেসরকারি/অন্যান্য)</label>
                <textarea type="text" name="ab_type" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="ab_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস</label>
                <textarea type="text" name="ab_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">বন্ধ</label>
                <textarea type="text" name="ab_close" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold;">যোগাযোগের তথ্য</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">যোগাযোগের তথ্য</p>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="name">নাম </label>
                <textarea type="text" name="con_info_name" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="address">ঠিকানা</label>
                <textarea type="text" name="con_info_address"address  class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">    
             <div class="parsley-row">
                <label for="contact_cumber">যোগাযোগের নম্বর </label>
                <textarea type="text" name="con_info_contact_number"  class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">জরুরী নম্বর</label>
                <textarea type="text" name="con_info_emergency_number"  class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">হটলাইন</label>
                <textarea type="text" name="con_info_hotline"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>       
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">সিরিয়াল দেওয়ার সময়</label>
                <textarea type="text" name="con_info_time"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>       
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">সিরিয়াল দেওয়ার নম্বর</label>
                <textarea type="text" name="con_info_serial_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>       
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">ই-মেইল</label>
                <textarea type="text" name="con_info_email"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 5px;">সাধারণ তথ্য</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">সাধারণ তথ্য</p>
    
    <p style="font-size: 16px;font-weight: bold">অভ্যন্তরীণ পরামর্শ </p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">সময়</label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Morning" name="general_info_time"id="val_radio_male" data-md-icheck ><span style="padding:5px">সকাল</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="Evening" id="val_radio_male" data-md-icheck name="general_info_time"><span style="padding:5px">বিকাল</span></label> 
                 </span>
                 <br>
                <span  style="padding:5px 5px 5px 0px" class="icheck-inline">
                  <label  class="inline-label"><input type="radio"  value="Morning & Evening"id="val_radio_male" data-md-icheck name="general_info_time"><span style="padding:5px">উভয়</span></label>
              </span>
              <br>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">সেবা ঘন্টা </label>
                <textarea type="text" name="general_info_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">কার্য দিবস</label>
                <textarea type="text" name="general_info_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">বন্ধ</label>
                <textarea type="text" name="general_info_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">সিরিয়াল দেওয়ার জন্য উপরের নম্বরে ফোন করুন </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="general_info_call_serial"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="general_info_call_serial"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ফোনে সিরিয়াল নম্বর দেওয়া হয় না। সরাসরি এসে সিরিয়াল দিতে হয়  </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="general_info_serial_number"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="general_info_serial_number"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold">বহির্বিভাগ পরামর্শ </p>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">সময় </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Morning" name="out_general_info_time"id="val_radio_male" data-md-icheck ><span style="padding:5px">সকাল </span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="Evening" id="val_radio_male" data-md-icheck name="out_general_info_time"><span style="padding:5px">বিকাল</span></label> 
                 </span>
                 <br>
                <span  style="padding:5px 5px 5px 0px" class="icheck-inline">
                  <label  class="inline-label"><input type="radio"  value="Morning & Evening"id="val_radio_male" data-md-icheck name="out_general_info_time"><span style="padding:5px">উভয়</span></label>
              </span>
              <br>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">সেবা ঘন্টা</label>
                <textarea type="text" name="out_general_info_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">কার্য দিবস</label>
                <textarea type="text" name="out_general_info_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">বন্ধ</label>
                <textarea type="text" name="out_general_info_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">সিরিয়াল দেওয়ার জন্য উপরের নম্বরে ফোন করুন </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="out_general_info_call_serial"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="out_general_info_call_serial"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ফোনে সিরিয়াল নম্বর দেওয়া হয় না। সরাসরি এসে সিরিয়াল দিতে হয় </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="out_general_info_serial_number"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="out_general_info_serial_number"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>

    
    <br>
    
    <p style="font-size: 18px;font-weight: bold;background:white;color:black; text-align: left">ডাক্তার (যদি থাকে)<br><small>ডক্টরস্‌ প্যানেলে বিস্তারিত লিখুন</small></p>
     
    <br>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left; margin-bottom: 2px;">সেবা </p>
    
    <br>
    
    <!--<p style="font-size: 16px;font-weight: bold">অ্যাম্বুলেন্স  </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">অ্যাম্বুলেন্স</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">সেবার পরিধি</label>
                <textarea type="text" name="amb_service_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">ভাড়া</label>
                <textarea type="text" name="amb_fare"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ভাড়া আলোচনা সাপেক্ষে </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="fare_negotiable"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="fare_negotiable"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">সেবা ঘণ্টা</label>
                <textarea type="text" name="amb_service_hour"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">কার্য দিবস</label>
                <textarea type="text" name="amb_working_day"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">বন্ধ</label>
                <textarea type="text" name="amb_cont_close"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
    
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">যোগাযোগের নম্বর</label>
                <textarea type="text" name="amb_cont_number"  class="md-input"></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">সুযোগ-সুবিধা  </p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">শীতাতপ নিয়ন্ত্রিত</label> 
                <br>
                <span  style="padding:5px 5px 5px 0px" class="icheck-inline">
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_condition"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_condition"><span style="padding:5px">না</span></label> 
                 </span> 
                
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">শীতাতপ নিয়ন্ত্রিত নয় </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="no_air_condition"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="no_air_condition"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">গুরুতর যত্নের জন্য মেডিক্যাল কর্মী </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="medical_staf_cate"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="medical_staf_cate"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">অক্সিজেন সিলিন্ডার </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="oxygen_cylinder"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="oxygen_cylinder"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">স্ট্রেচার </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="stretcher"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="stretcher"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">চাকাওয়ালা চেয়ার </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="wheel_chair"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="wheel_chair"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">হাসপাতাল থেকে রোগীদের নির্গমনের সময় বাইরের কোন অ্যাম্বুলেন্সের অনুমতি নেই </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ambulance_outside"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ambulance_outside"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold">আই সি ইউ অ্যাম্বুলেন্স </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">আই সি ইউ অ্যাম্বুলেন্স</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number"> সেবার পরিধি </label>
                <textarea type="text" name="ac_amb_service_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">ভাড়া</label>
                <textarea type="text" name="ac_amb_fare"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ভাড়া আলোচনা সাপেক্ষে </label> 
                <br>
                <span style="padding:5px 5px 5px 0px;" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_fare_negotiable" id="val_radio_male" data-md-icheck ><span style="padding:5px;">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px;" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_fare_negotiable"><span style="padding:5px">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">সেবা ঘণ্টা</label>
                <textarea type="text" name="ac_amb_service_hour" class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">কার্য দিবস</label>
                <textarea type="text" name="ac_amb_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">বন্ধ</label>
                <textarea type="text" name="ac_amb_cont_close"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
    
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">যোগাযোগের নম্বর</label>
                <textarea type="text" name="ac_amb_cont_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">সুযোগ-সুবিধা </p>
   
   
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">গুরুতর যত্নের জন্য মেডিক্যাল কর্মী </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_medical_staf_cate"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_medical_staf_cate"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">স্ট্রেচার </label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_stretcher"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_stretcher"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
        <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">চাকাওয়ালা চেয়ার </label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_wheel_chair"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_wheel_chair"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>

    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">হাসপাতাল থেকে রোগীদের নির্গমনের সময় বাইরের কোন অ্যাম্বুলেন্সের অনুমতি নেই </label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="icu_ambulance_outside"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="icu_ambulance_outside"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    

    
    <!--<p style="font-size: 16px;font-weight: bold">এয়ার অ্যাম্বুলেন্স</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">এয়ার অ্যাম্বুলেন্স</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">সেবার পরিধি</label>
                <textarea type="text" name="air_amb_service_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">ভাড়া</label>
                <textarea type="text" name="air_amb_fare"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ভাড়া আলোচনা সাপেক্ষে </label> 
                <br>
                <span style="padding:5px 5px 5px 0px;" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_fare_negotiable" id="val_radio_male" data-md-icheck ><span style="padding:5px;">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px;" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_fare_negotiable"><span style="padding:5px">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">সেবা ঘণ্টা</label>
                <textarea type="text" name="air_amb_service_hour" class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">কার্য দিবস</label>
                <textarea type="text" name="air_amb_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">বন্ধ</label>
                <textarea type="text" name="air_amb_cont_close"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
    
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">যোগাযোগের নম্বর</label>
                <textarea type="text" name="air_amb_cont_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">সুযোগ-সুবিধা  </p>
   
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">আই সি ইউ </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_amb_icu"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_amb_icu"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">সাধারণ </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_amb_normal"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_amb_normal"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
   
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">গুরুতর যত্নের জন্য মেডিক্যাল কর্মী </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_medical_staf_cate"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_medical_staf_cate"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">অক্সিজেন সিলিন্ডার </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_oxygen_cylinder"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_oxygen_cylinder"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">স্ট্রেচার </label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_stretcher"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_stretcher"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">চাকাওয়ালা চেয়ার </label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="air_wheel_chair"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_wheel_chair"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    
    <!--<p style="font-size: 16px;font-weight: bold">ব্লাড ব্যাংক  </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">ব্লাড ব্যাংক</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">সেবা ঘণ্টা</label>
                <textarea type="text" name="blood_bank_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">কার্য দিবস</label>
                <textarea type="text" name="blood_bank_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">বন্ধ</label>
                <textarea type="text" name="blood_bank_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">যোগাযোগের নম্বর</label>
                <textarea type="text" name="blood_bank_contact_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">রোগ নির্ণয় সংক্রান্ত পরীক্ষা-নিরীক্ষা  </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">রোগ নির্ণয় সংক্রান্ত পরীক্ষা-নিরীক্ষা<br><small>পরীক্ষার নাম, মূল্য, পূর্ব-প্রস্তুতি এবং যোগাযোগের নম্বর লিখুন</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="diagnostic_test"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
    <!--<p style="font-size: 16px;font-weight: bold">আই ব্যাংক</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">আই ব্যাংক</p>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">সেবা ঘণ্টা</label>
                <textarea type="text" name="eye_bank_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">কার্য দিবস</label>
                <textarea type="text" name="eye_bank_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">বন্ধ</label>
                <textarea type="text" name="eye_bank_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
       <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">যোগাযোগের নম্বর</label>
                <textarea type="text" name="eye_bank_contact_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    

    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">সুযোগ-সুবিধা</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">এ টি ম বুথ </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_atm_booth"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_atm_booth"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ক্যাফিটিরিয়া   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_cafeteria"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_cafeteria"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
      <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ক্যান্টিন   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_canteen"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_canteen"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
      <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">কফি সপ </label> 
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_coffee_shop"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_coffee_shop"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
      <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">স্ন্যাক্‌স কর্নার </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_snacks_conrner"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_snacks_conrner"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ডে-কেয়ার সেন্টার  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_day_care_center"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_day_care_center"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">কার পার্কিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_car_parking"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_car_parking"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">মসজিদ   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_mosque"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_mosque"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">প্রার্থনা কক্ষ  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_prayer_room"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_prayer_room"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">মর্গ  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_mortuary"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_mortuary"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>

    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">হেল্‌থ চেক আপ প্যাকেজ</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">হেল্‌থ চেক আপ প্যাকেজ<br><small>প্রাথমিক পর্যায়ে সমস্যা নির্ধারণের পাশাপাশি একজন ব্যক্তির স্বাস্থ্যের স্থিতি সম্পর্কে জানতে প্যাকেজের মাধ্যমে রোগ নির্নয় সংক্রান্ত পরীক্ষা-নিরীক্ষা মূলক সেবা প্রদান করা হয়</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> অ্যাডভান্সড স্ট্রোক স্ক্রীনিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_adv_stroke"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_adv_stroke"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ব্রেস্ট ক্যান্সার স্ক্রীনিং  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_breast_cancer"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_breast_cancer"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">কার্ডিয়াক স্ক্রীনিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_cardiac"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_cardiac"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ক্যান্সার স্ক্রীনিং-পুরুষ/মহিলা   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_cancer"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_cancer"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> কম্পিউটারাইজড আই স্ক্রীনিং  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_eye_screening"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_eye_screening"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ক্যাটার‍্যাক্ট (চোখের ছানি) স্ক্রীনিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_cataract"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_cataract"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> কর্পোরেট হেল্‌থ চেক আপ   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_corporate_hlt"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_corporate_hlt"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> চাইল্ড চেক আপ </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_child_chk"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_child_chk"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ডায়াবেটিক চেক আপ  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_diabetic"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_diabetic"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ডায়াবেটিক আই স্ক্রিনিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_diabetic_eye"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_diabetic_eye"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ড্রাই আই স্ক্রীনিং  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_dry_eye"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_dry_eye"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> এক্সিকিউটিভ বেসিক চেক আপ-পুরুষ   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_basic_man"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_basic_man"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> এক্সিকিউটিভ বেসিক চেক আপ-মহিলা   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_basic_woman"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_basic_woman"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> এক্সিকিউটিভ প্রিমিয়ার চেক আপ-পুরুষ   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_premier_man"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_premier_man"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> এক্সিকিউটিভ প্রিমিয়ার চেক আপ-মহিলা   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_exe_premier_woman"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_exe_premier_woman"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ফুল মাউথ চেক আপ উইথ ক্যারিজ প্রিভেনশন-শিশু    </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_full_mouth"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_full_mouth"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> গ্লুকোমা স্ক্রীনিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_glaucoma"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_glaucoma"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> লিভার স্ক্রীনিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_liver"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_liver"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> মাউথ ক্যান্সার স্ক্রীনিং-প্রাপ্তবয়স্ক   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_mouth_cancer"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_mouth_cancer"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ওরাল ও ডেন্টাল হেল্‌থ স্ক্রীনিং-প্রাপ্তবয়স্ক   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_oral_dental"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_oral_dental"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> অস্টিওপরোসিস স্ক্রীনিং   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_osteoporosis"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_osteoporosis"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">স্ট্রোক স্ক্রীনিং  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_stroke"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_stroke"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> থাইরয়েড স্ক্রীনিং  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_thyroid"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_thyroid"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> হোল বডি চেক আপ-পুরুষ (৪৫ বছরের নিচে)  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_body_less_45"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_body_less_45"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">হোল বডি চেক আপ-পুরুষ (৪৫ বছরের উপরে)   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_male_plus_45"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_male_plus_45"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> হোল বডি চেক আপ-মহিলা (৩৫ বছরের নিচে)  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_female_less_35"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_female_less_35"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> হোল বডি চেক আপ-মহিলা (৩৫ বছরের উপরে)   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hlt_chk_whole_female_plus_35"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hlt_chk_whole_female_plus_35"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="hlt_chk_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
     
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">হোম সার্ভিস</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">হোম সার্ভিস<br><small>দুঃসহ যানজট কিংবা গুরুতর অসুস্থ বা বার্ধক্যের কারণে বাইরে যেতে অক্ষম ব্যাক্তির বাসায় গিয়ে রোগ নির্নয় সংক্রান্ত পরীক্ষা-নিরীক্ষা মূলক সেবা প্রদান করা হয়</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">রক্ত পরীক্ষা করা হয়  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_blood_test"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_blood_test"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> মল পরীক্ষা করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_stool"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_stool"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> মূত্র পরীক্ষা করা হয়  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_urine"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_urine"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> রক্তচাপ নির্নয় করা হয়  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_blood_pressure"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_blood_pressure"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ডায়বেটিস পরীক্ষা করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_diabetes"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_diabetes"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ওজন মাপা হয়  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_weight"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_weight"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সুন্নত (খতনা) করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_circumcision"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_circumcision"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> নেবুলাইজারের মাধ্যমে গ্যাস দেওয়া হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_nebulization"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_nebulization"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">এক্স-রে করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_xray"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_xray"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ইসিজি করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_ecg"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_ecg"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সেবার পরিধি </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_serv_area"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_serv_area"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="hm_serv_serv_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সার্ভিস চার্জ </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_serv_charge"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_serv_charge"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="hm_serv_serv_charge"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সার্ভিস চার্জ আলোচনা সাপেক্ষে  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_serv_charge_negotiable"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_serv_charge_negotiable"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সেবা ঘণ্টা </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_serv_hour"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_serv_hour"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="hm_serv_serv_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> কার্য দিবস </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="hm_serv_working_day"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="hm_serv_working_day"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="hm_serv_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="hm_serv_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="hm_serv_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
         
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;"> চিকিৎসা বিভাগ </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">চিকিৎসা বিভাগ<br><small>বিভাগের নাম লিখুন</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="treat_dept_name"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
     
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">অপটিক্যাল সপ</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">অপটিক্যাল সপ</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="opt_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname"> কার্য দিবস</label>
                <textarea type="text" name="opt_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="opt_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="opt_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">হোম ডেলিভারি সার্ভিস  </p>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবার পরিধি </label>
                <textarea type="text" name="opt_home_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">ডেলিভারি চার্জ</label>
                <textarea type="text" name="opt_home_delivery_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ডেলিভারি চার্জ আলোচনা সাপেক্ষে </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="opt_home_delivery_charge_nego"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="opt_home_delivery_charge_nego"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="opt_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস</label>
                <textarea type="text" name="opt_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="opt_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="opt_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">আউট পেশন্ট সার্ভিস </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">আউট পেশন্ট সার্ভিস<br><small>হাসপাতালের বাইরে গিয়ে অন্য রোগীকে রোগ নির্নয় সংক্রান্ত পরীক্ষা-নিরীক্ষা মূলক সেবা প্রদান করা হয়</small> </p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> রক্ত পরীক্ষা করা হয় </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_blood_test"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_blood_test"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> মল পরীক্ষা করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_stool"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_stool"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">মূত্র পরীক্ষা করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_urine"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_urine"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> রক্তচাপ নির্নয় করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_blood_pressure"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_blood_pressure"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ডায়বেটিস পরীক্ষা করা হয়  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_diabetes"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_diabetes"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ওজন মাপা হয় </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_weight"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_weight"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সুন্নত (খতনা) করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_circumcision"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_circumcision"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> নেবুলাইজারের মাধ্যমে গ্যাস দেওয়া হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_nebulization"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_nebulization"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> এক্স-রে করা হয়  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_xray"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_xray"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ইসিজি করা হয়   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_ecg"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_ecg"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সেবার পরিধি</label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_serv_area"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_serv_area"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="ops_serv_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সার্ভিস চার্জ </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_serv_charge"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_serv_charge"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="ops_serv_charge"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সার্ভিস চার্জ আলোচনা সাপেক্ষে  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_serv_charge_negotiable"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_serv_charge_negotiable"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সেবা ঘণ্টা </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_serv_hour"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_serv_hour"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="ops_serv_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> কার্য দিবস </label> 
                <!--
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ops_working_day"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ops_working_day"> <span style="padding:5px">না</span></label> 
                 </span>
                 -->
                 <textarea type="text" name="ops_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="ops_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="ops_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">ফার্মেসী </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">ফার্মেসী</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="pha_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস </label>
                <textarea type="text" name="pha_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="pha_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="pha_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">হোম ডেলিভারি সার্ভিস  </p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সর্বনিম্ন অর্ডার মূল্য (টাকা)</label>
                <textarea type="text" name="pha_order_tk" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবার পরিধি</label>
                <textarea type="text" name="pha_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">ডেলিভারি চার্জ</label>
                <textarea type="text" name="pha_delivery_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> ডেলিভারি চার্জ আলোচনা সাপেক্ষে  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="pha_delivery_charge_nego"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="pha_delivery_charge_nego"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="pha_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস </label>
                <textarea type="text" name="pha_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="pha_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="pha_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    
    <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">ফিজিওথেরাপি অ্যান্ড রিহ্যাবিলিটেশন সেন্টার</p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">ফিজিওথেরাপি অ্যান্ড রিহ্যাবিলিটেশন সেন্টার</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="prc_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস </label>
                <textarea type="text" name="prc_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="prc_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="prc_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold;">হোম সার্ভিস  </p>
    <p style="font-size: 16px; margin-bottom: 25px;">বাসায় গিয়ে রোগীকে চিকিৎসা বিষয়ক বিভিন্ন পরামর্শ ও সেবা প্রদান করা হয়</p>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবার পরিধি</label>
                <textarea type="text" name="prc_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সার্ভিস চার্জ </label>
                <textarea type="text" name="prc_service_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সার্ভিস চার্জ আলোচনা সাপেক্ষে  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="prc_service_charge_nego"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="prc_service_charge_nego"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="prc_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস </label>
                <textarea type="text" name="prc_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="prc_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="prc_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <!--<p style="font-size: 16px;font-weight: bold; margin-bottom: 25px;">কক্ষ সেবা (ওয়ার্ড, ক্যাবিন ইত্যাদি) </p>-->
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">কক্ষ সেবা<br>(ওয়ার্ড, ক্যাবিন ইত্যাদি)<br><small>শয্যার নাম, মোট শয্যা সংখ্যা, ফ্রি শয্যা সংখ্যা, ভাড়া এবং যোগাযোগের নম্বর লিখুন</small></p>
   
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="room_service_name"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
     <!--<p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">ভ্যাকসিনেশন সেন্টার </p>-->
     <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">ভ্যাকসিনেশন সেন্টার</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="vc_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস</label>
                <textarea type="text" name="vc_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="vc_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="vc_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 16px; font-weight: bold; margin-bottom: 25px;">হোম সার্ভিস  </p>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবার পরিধি</label>
                <textarea type="text" name="vc_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সার্ভিস চার্জ</label>
                <textarea type="text" name="vc_service_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সার্ভিস চার্জ আলোচনা সাপেক্ষে  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="vc_service_charge_nego"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                     <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="vc_service_charge_nego"><span style="padding:5px">না</span></label> 
                 </span> 
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="vc_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস </label>
                <textarea type="text" name="vc_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="vc_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="vc_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">আরও তথ্য<br><small>(যদি থাকে)</small></p>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message"></label>
                <textarea class="md-input" name="more_details" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    <br>
    
    <input  type="submit" class="md-btn md-btn-danger md-btn-large" name="submit" value="পাঠিয়ে দিন" style="float:right;background: #FD0100;color: #fff;">
                    
@endif

</form>