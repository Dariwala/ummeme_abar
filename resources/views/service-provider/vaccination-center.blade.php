<form id="form_validation" method="post" action="{{route('service-vaccination-center')}}" class="uk-form-stacked">
{!! csrf_field() !!}
<input type="hidden" name="subject" value="Vaccination Center" />
@if(Session('language')=='en')
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
                <label for="email">E-mail</label>
                <textarea type="text" name="con_info_email"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">General Info</p>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message"></label>
                <textarea class="md-input" name="general_info" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <br>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left; margin-bottom: 2px;">Doctor (If Any)<br><small>Write details in the Doctors Panel</small></p>
     
    <br>
    
    <!--<p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left; margin-bottom: 2px;">Service</p>
    
    <br>-->
    
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
                   <label class="inline-label"><input type="radio" value="Yes" name="fare_negotiable"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="yes" name="air_condition"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="no_air_condition"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="medical_staf_cate"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="oxygen_cylinder"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="stretcher"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="wheel_chair"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="wheel_chair"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
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
                <span style="padding:5px 5px 5px 0px;" class="icheck-inline">
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
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_medical_staf_cate"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_stretcher"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_wheel_chair"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_wheel_chair"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
                    
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
    
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Diagnostic Test<br><small>Write Test Name, Rate, Preparation & Contact Number</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="diagnostic_test"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Facilities</p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ATM Booth </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_atm_booth"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_cafeteria"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_canteen"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_coffee_shop"id="val_radio_male" data-md-icheck ><span style="padding:5px;">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_snacks_conrner"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_day_care_center"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_car_parking"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_mosque"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_prayer_room"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_prayer_room"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Home Service</p>
    
     <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Area</label>
                <textarea type="text" name="dc_home_service_area"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
     <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Charge </label>
                <textarea type="text" name="dc_home_service_charge"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">Service Charge Negotiable</label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="dc_home_service_charge_negotiable"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                    <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="dc_home_service_charge_negotiable"><span style="padding:5px;">NO</span></label> 
                 </span>
            </div>
        </div>
    </div>
    
     <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Service Hour</label>
                <textarea type="text" name="dc_home_service_hour"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
     <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Working Day</label>
                <textarea type="text" name="dc_home_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
     <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Closed</label>
                <textarea type="text" name="dc_home_closed"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
     <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email">Contact Number</label>
                <textarea type="text" name="dc_home_contact_number"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
 
     <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Medical Department<br><small>Write Department Name</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="treat_dept_name"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
   
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
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Home Delivery Service</p>
    
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
                   <label class="inline-label"><input type="radio" value="Yes" name="pha_delivery_charge_nego"id="val_radio_male" data-md-icheck ><span style="padding:5px">YES</span></label> 
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
 
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">Room Service<br>(Ward, Cabin etc)<br><small>Write Bed Name, Total Bed Number, Free Bed Number, Rent & Contact Number</small></p>
   
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="room_service_name"  class="md-input" rows="2" cols="10" ></textarea>
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
                <label for="emergency_number">জরুরী নম্বর </label>
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
                <label for="email">ই-মেইল</label> 
                <textarea type="text" name="con_info_email"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">সাধারণ তথ্য</p>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message"></label>
                <textarea class="md-input" name="general_info" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <br>
    
    <p style="font-size: 18px;font-weight: bold;background:white;color:black; text-align: left">ডাক্তার (যদি থাকে)<br><small>ডক্টরস্‌ প্যানেলে বিস্তারিত লিখুন</small></p>
      
    <br>
    
    <!--<p style="font-size: 18px;font-weight: bold;background:white;color:black; text-align: left">সেবা </p>
    
    <br>-->
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">অ্যাম্বুলেন্স</p>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">সেবার পরিধি</label>
                <textarea type="text" name="amb_service_area"  class="md-input"></textarea>
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="fare_negotiable"><span style="padding:5px;">না</span></label> 
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
                <label for="emergency_number">কার্য দিবস  </label>
                <textarea type="text" name="amb_working_day"  class="md-input"></textarea>
            </div>
        </div>
    </div>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">বন্ধ </label>
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
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom:25px;">সুযোগ-সুবিধা </p>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">শীতাতপ নিয়ন্ত্রিত </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="yes" name="air_condition"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="air_condition"><span style="padding:5px;">না</span></label> 
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="no_air_condition"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">গুরুতর যত্নের জন্য মেডিক্যাল কর্মী </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="medical_staf_cate"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="medical_staf_cate"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">অক্সিজেন সিলিন্ডার </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="oxygen_cylinder"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="oxygen_cylinder"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">স্ট্রেচার</label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="stretcher"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="stretcher"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">চাকাওয়ালা চেয়ার </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="wheel_chair"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="wheel_chair"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">আই সি ইউ অ্যাম্বুলেন্স</p>

     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="emergency_number">সেবার পরিধি</label>
                <textarea type="text" name="ac_amb_service_area"  class="md-input"></textarea>
            </div>
        </div>
    </div>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">ভাড়া</label>
                <textarea type="text" name="ac_amb_fare"  class="md-input"></textarea>
            </div>
        </div>
    </div>

     <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ভাড়া আলোচনা সাপেক্ষে </label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_fare_negotiable"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_fare_negotiable"><span style="padding:5px;">না</span></label> 
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
                <label for="emergency_number">কার্য দিবস  </label>
                <textarea type="text" name="ac_amb_working_day"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>

    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="hotline">বন্ধ </label>
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
    
    <p style="font-size: 16px;font-weight: bold; margin-bottom:25px;"> সুযোগ-সুবিধা </p>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">গুরুতর যত্নের জন্য মেডিক্যাল কর্মী</label> <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="yes" name="ac_medical_staf_cate"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_medical_staf_cate"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">স্ট্রেচার</label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_stretcher"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_stretcher"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">চাকাওয়ালা চেয়ার</label>
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="ac_wheel_chair"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="ac_wheel_chair"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
 
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
    
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">রোগ নির্ণয় সংক্রান্ত পরীক্ষা-নিরীক্ষা<br><small>পরীক্ষার নাম, মূল্য, পূর্ব-প্রস্তুতি এবং যোগাযোগের নম্বর লিখুন</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="diagnostic_test"  class="md-input" rows="2" cols="10" ></textarea>
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_atm_booth"><span style="padding:5px;">না</span></label> 
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_cafeteria"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
      <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class="">ক্যান্টীন   </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_canteen"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_canteen"><span style="padding:5px;">না</span></label> 
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
                   <label class="inline-label"><input type="radio" value="Yes" name="facilities_coffee_shop"id="val_radio_male" data-md-icheck ><span style="padding:5px;">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_coffee_shop"><span style="padding:5px;">না</span></label> 
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_snacks_conrner"><span style="padding:5px;">না</span></label> 
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_day_care_center"><span style="padding:5px;">না</span></label> 
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_car_parking"><span style="padding:5px;">না</span></label> 
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_mosque"><span style="padding:5px;">না</span></label> 
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="facilities_prayer_room"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">হোম সার্ভিস<br><small>বাসায় গিয়ে রোগীকে ভ্যাকসিন প্রদান করা হয়</small></p>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবার পরিধি</label>
                <textarea type="text" name="dc_home_service_area" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
   <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সার্ভিস চার্জ </label>
                <textarea type="text" name="dc_home_service_charge" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row parsley-row">
                <label for="emergency_number" class=""> সার্ভিস চার্জ আলোচনা সাপেক্ষে  </label> 
                <br>
                 <span style="padding:5px 5px 5px 0px" class="icheck-inline">
                   <label class="inline-label"><input type="radio" value="Yes" name="dc_home_service_charge_nego"id="val_radio_male" data-md-icheck ><span style="padding:5px">হ্যাঁ</span></label> 
                </span>
                <br>
                <span style="padding:5px 5px 5px 0px" class="icheck-inline">
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="dc_home_service_charge_nego"><span style="padding:5px;">না</span></label> 
                </span>
            </div>
        </div>
    </div>
    
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">সেবা ঘণ্টা</label>
                <textarea type="text" name="dc_home_service_hour" class="md-input" rows="2" cols="10"></textarea>
            </div>
         </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="fullname">কার্য দিবস </label>
                <textarea type="text" name="dc_home_working_day" class="md-input" rows="2" cols="10"></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">বন্ধ</label>
                <textarea class="md-input" name="dc_home_closed" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="message">যোগাযোগের নম্বর</label>
                <textarea class="md-input" name="dc_home_contact" cols="10" rows="2" data-parsley-trigger="keyup"  data-parsley-validation-threshold="10" d></textarea>
            </div>
        </div>
    </div>
    
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">চিকিৎসা বিভাগ<br><small>বিভাগের নাম লিখুন</small></p>
    
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="treat_dept_name"  class="md-input" rows="2" cols="10" ></textarea>
            </div>
        </div>
    </div>

    
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
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">হোম ডেলিভারি সার্ভিস</p>
    
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
	                <label class="inline-label"><input type="radio" value="No" id="val_radio_male" data-md-icheck name="pha_delivery_charge_nego"><span style="padding:5px;">না</span></label> 
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
    
    
    <p style="font-size: 18px;font-weight: bold; background:white; color:black; text-align: left;">কক্ষ সেবা<br>(ওয়ার্ড, ক্যাবিন ইত্যাদি)<br><small>শয্যার নাম, মোট শয্যা সংখ্যা, ফ্রি শয্যা সংখ্যা, ভাড়া এবং যোগাযোগের নম্বর লিখুন</small></p>
   
    <div class="uk-grid" data-uk-grid-margin>
         <div class="uk-width-medium-1-1">
            <div class="parsley-row">
                <label for="email"></label>
                <textarea type="text" name="room_service_name"  class="md-input" rows="2" cols="10" ></textarea>
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