@extends('layouts.frontend_master')

@section('title', 'Blood Donor')


@section('aside')

    <?php
        class BanglaConverter {
            public static $bn = array("১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০");
            public static $en = array("1", "2", "3", "4", "5", "6", "7", "8", "9", "0");
            
            public static function bn2en($number) {
                return str_replace(self::$bn, self::$en, $number);
            }
            
            public static function en2bn($number) {
                return str_replace(self::$en, self::$bn, $number);
            }
        }
    ?>

    <style type="text/css">
        .resultText{
            text-align: center;
            padding-top: 30px;
            padding-right: 15px;
            font-size: 1.4em;
            color: white;
            font-weight: bold;
        }
        .selectedSidebar{
            background-color: #e4e4e4;
        }
        #sidebar_main .sidebar_main_header {
            margin-bottom: 0px !important;
        }
        .uk-text-truncate {
            overflow: visible !important;
        }
        .uk-form-row+.uk-form-row {
            margin-top: 15px !important;
        }
        .black-border{
            border: 1px solid black;
        }
        .uk-tab-bn>li>a{
            font-size: 15px !important;
        }
    </style>

    <style type="text/css" media="print">
        div { visibility: hidden; display: none }
    </style>

    @if(Session('language')=='bn')
        <aside id="sidebar_main">
            <div class="sidebar_main_header">
                <h4 class="resultText">মোট ফলাফল <br/> {{ BanglaConverter::en2bn($total_result)}}</</h4>
            </div>
    
    
            <div class="menu_section">
                <ul>
                    @foreach($aside_results as $aside_result)
                        @if($blood_donor->id == $aside_result->id)
                            <li class="selectedSidebar">
                                <a href="{{ url('frontendblooddonor/view'.'/'.$aside_result->id.'/'.$aside_result->subdistrict_id)}}">
                                    <span class="md-list-heading">{{$aside_result->b_blood_donor_name}}</span>
                                </a>
                            </li>
                        @else
                            <li title="">
                                <a href="{{ url('frontendblooddonor/view'.'/'.$aside_result->id.'/'.$aside_result->subdistrict_id)}}">
                                    <span class="md-list-heading">{{$aside_result->b_blood_donor_name}}</span>
                                </a>
                            </li>
                        @endif
                    @endforeach
                </ul>
            </div>
        </aside>
    @else
        <aside id="sidebar_main">
            <div class="sidebar_main_header">
                <h4 class="resultText">Total Result <br/>{{$total_result}}</h4>
            </div>
    
    
            <div class="menu_section">
                <ul>
                    @foreach($aside_results as $aside_result)
                        @if($blood_donor->id == $aside_result->id)
                            <li class="selectedSidebar">
                                <a href="{{ url('frontendblooddonor/view'.'/'.$aside_result->id.'/'.$aside_result->subdistrict_id)}}">
                                    <span class="md-list-heading">{{$aside_result->blood_donor_name}}</span>
                                </a>
                            </li>
                        @else
                            <li title="">
                                <a href="{{ url('frontendblooddonor/view'.'/'.$aside_result->id.'/'.$aside_result->subdistrict_id)}}">
                                    <span class="md-list-heading">{{$aside_result->blood_donor_name}}</span>
                                </a>
                            </li>
                        @endif
                    @endforeach
                </ul>
            </div>
        </aside>
    @endif

@endsection




@section('content')

    @if(Session('language')=='bn')
        <div class="uk-width-large-7-10" oncopy="return false" oncut="return false" onpaste="return false">
        <div class="md-card">
            <div class="user_heading">
                <div class="user_heading_avatar" style="width:100%;margin-left: calc(50% - 41px);margin-top:16px;">
                     <div class="thumbnail">
                        @if($blood_donor->photo_path == '')
                        <div class="thumbnail"><img alt="blood donor"  src="{{asset('/BloodDonor.jpg')}}">
                        </div>
                        @else
                        <div class="thumbnail"><img alt="blood donor" src="{{ url($blood_donor->photo_path) }}">
                        </div>
                        @endif
                    </div>
                </div>
    
                <div class="user_heading_content" style="display:table;margin:0 auto;">
                    <h2 class="heading_b"><span class="uk-text-break">{{$blood_donor->b_blood_donor_name}}</span>
                    </h2>
                </div>
            </div>
            
            <div class="user_content">
                <ul class="uk-tab" data-uk-sticky="{ top: 48, media: 960 }" data-uk-tab="{connect:'#user_profile_tabs_content', animation:'slide-horizontal'}" id="user_profile_tabs">
                    <li class="uk-active" >
                        <a href="#">সম্বন্ধে</a>
                    </li>
                    <li>
                        <a href="#">প্রবন্ধ</a>
                    </li>
                </ul>
                
    
    
                <ul class="uk-switcher uk-margin" id="user_profile_tabs_content">
                    <li><?php echo $blood_donor->b_blood_donor_description; ?>
    
                        <div class="uk-grid" data-uk-grid-margin="">
                            <div class="uk-width-large-1-1">
                                <h4 class="heading_c uk-margin-small-bottom">যোগাযোগের তথ্য</h4>
    
    
                                <ul class="md-list md-list-addon">
                                    <li>
                                        <div class="md-list-addon-element">
                                            <i class="md-list-addon-icon material-icons">&#xE88A;</i>
                                        </div>
    
    
                                        <div class="md-list-content">
                                            <span style="margin-top:5px" class="md-list-heading">{!! nl2br($blood_donor->b_blood_donor_address) !!}</span> <span class="uk-text-small uk-text-muted hidden">Address</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="md-list-addon-element">
                                            <i class="md-list-addon-icon material-icons">&#xE0CD;</i>
                                        </div>
                                        <div class="md-list-content">
                                            <span style="margin-top:5px" class="md-list-heading">
                                                @if($blood_donor->b_blood_donor_phone_no != '')
                                                @php
                                                    $phone_number_splitted = explode("\n",$blood_donor->b_blood_donor_phone_no);
                                                    $e_phone_number_splitted = explode("\n",$blood_donor->blood_donor_phone_no);
                                                    $len = sizeof($phone_number_splitted);
                                                @endphp
                                                    @for($i = 0; $i < $len ; $i = $i + 1)
                                                        @php
                                                            $phone_number = $phone_number_splitted[$i];
                                                            $e_phone_number = $e_phone_number_splitted[$i];
                                                            $length = strlen($e_phone_number);
                                                        @endphp
                                                        @if(!is_numeric($e_phone_number[1]))
                                                            {{$phone_number}}
                                                        @else
                                                            @if($i != $len - 1)
                                                            {{$phone_number}}<a href = "tel:{{$e_phone_number}}"><i class="fa fa-phone" style="margin-left:5px;"></i></a>
                                                            @else
                                                            {{$phone_number}}<a href = "tel:{{$e_phone_number}}">&nbsp;<i class="fa fa-phone" style="margin-left:5px;"></i></a>
                                                            @endif
                                                        @endif
                                                        @if($i != $len - 1)
                                                            <br>
                                                        @endif
                                                    @endfor
                                                @endif
                                            </span>
                                             <span class="uk-text-small uk-text-muted hidden">Phone</span>
                                        </div>
                                    </li>
                                    @if($blood_donor->blood_donor_email_ad != '')
                                    <li>
                                        <div class="md-list-addon-element">
                                            <i  style= "margin: 0" class="md-list-addon-icon material-icons">&#xE158;</i>
                                        </div>
                                        <div class="md-list-content">
    
                                            <span style="margin-top:5px" class="md-list-heading">
                                                {{$blood_donor->blood_donor_email_ad}}<a href = "mailto:{{$blood_donor->blood_donor_email_ad}}"><i class="fa fa-envelope-o" style="margin-left:5px;"></i></a>
                                            </span>
    
                                            <span class="uk-text-small uk-text-muted hidden">Email</span>
                                        </div>
                                    </li>
                                    @endif
    
                                    <li>
                                        <div class="md-list-addon-element">
                                           <i  style= "margin: 0" class="md-list-addon-icon material-icons">language</i> 
                                        </div>
    
    
                                        <div class="md-list-content">
                                            <span style="margin-top:5px" class="md-list-heading">{{$blood_donor->blood_donor_fb_link}}</span> <span class="uk-text-small uk-text-muted hidden">Facebook</span>
                                        </div>
                                    </li>
                                    <li class="hidden" >
                                        <div class="md-list-addon-element">
                                           <i  style= "margin: 0" class="md-list-addon-icon material-icons">language</i> 
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                            
                        <div class="uk-width-large-1-1 uk-margin-medium-top">
                            <h4 class="heading_c">সাধারণ তথ্য</h4>
                            <ul class="md-list uk-margin-small-top">
                            <?php echo $blood_donor->b_blood_donor_general_info; ?>
                            <!--
                                <li>
                                    <div class="md-list-content ">
                                       <span class="hidden">General info:</span> <span><?php #echo $blood_donor->b_blood_donor_general_info; ?></span>
                                    </div>
                                </li>
                            </ul>
                            -->
                        </div>
                                                                            
                        <!-- START google maps -->
                        
                        @if( $blood_donor->blood_donor_latitude != '' && $blood_donor->blood_donor_longitude != '' )
                        
                        <div class="uk-width-large-1-1 google_maps_show">
                             <iframe 
                                src="https://www.google.com/maps/embed/v1/search?key=AIzaSyD3_tCn50Ef5Z2zUJxkXi26T486gIzIHp8&q={{ $blood_donor->blood_donor_latitude }}, {{ $blood_donor->blood_donor_longitude }}&zoom=15" frameborder="0" height="600" style="border:0; width:100%;" allowfullscreen>
                            </iframe>
                        </div>
                        
                        @endif
                        
                        <!-- END google maps -->
                           
                    </li>
                    <li>
                        <ul class="md-list">
                        @foreach($prices as $price)
                            @php echo $price->b_package_details; @endphp
                        @endforeach
                        <!--
                            <li style="padding-top: 0px;">
                                <div class="md-list-content">
                                    @foreach($prices as $price)
                                        @php echo $price->b_package_details; @endphp
                                    @endforeach
                                </div>
                            </li>
                        -->
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    @else
        <div class="uk-width-large-7-10" oncopy="return false" oncut="return false" onpaste="return false">
        <div class="md-card">
            <div class="user_heading">
                <div class="user_heading_avatar" style="width:100%;margin-left: calc(50% - 41px);margin-top:16px;">
                     <div class="thumbnail">
                        @if($blood_donor->photo_path == '')
                        <div class="thumbnail"><img alt="blood donor"  src="{{asset('/BloodDonor.jpg')}}">
                        </div>
                        @else
                        <div class="thumbnail"><img alt="blood donor" src="{{ url($blood_donor->photo_path) }}">
                        </div>
                        @endif
                    </div>
                </div>
    
                <div class="user_heading_content" style="display:table;margin:0 auto;">
                    <h2 class="heading_b"><span class="uk-text-break">{{$blood_donor->blood_donor_name}}</span>
                    </h2>
                </div>
            </div>
    
    
            <div class="user_content">
                <ul class="uk-tab" data-uk-sticky="{ top: 48, media: 960 }" data-uk-tab="{connect:'#user_profile_tabs_content', animation:'slide-horizontal'}" id="user_profile_tabs">
                    <li class="uk-active">
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Article</a>
                    </li>
                </ul>
    
    
                <ul class="uk-switcher uk-margin" id="user_profile_tabs_content">
                    <li><?php echo $blood_donor->blood_donor_description; ?>
    
                        <div class="uk-grid " data-uk-grid-margin="">
                            <div class="uk-width-large-1-1">
                                <h4 class="heading_c uk-margin-small-bottom uk-margin-small-top">Contact Info</h4>
    
    
                                <ul class="md-list md-list-addon">
                                    <li>
                                        <div class="md-list-addon-element">
                                            <i class="md-list-addon-icon material-icons">&#xE88A;</i>
                                        </div>
    
    
                                        <div class="md-list-content">
                                            <span style="margin-top:5px" class="md-list-heading">{!! nl2br($blood_donor->blood_donor_address) !!}</span> <span class="uk-text-small uk-text-muted hidden">Address</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="md-list-addon-element">
                                            <i class="md-list-addon-icon material-icons">&#xE0CD;</i>
                                        </div>
                                        <div class="md-list-content">
                                            <span style="margin-top:5px" class="md-list-heading">
                                                @if($blood_donor->blood_donor_phone_no != '')
                                                @php
                                                    $e_phone_number_splitted = explode("\n",$blood_donor->blood_donor_phone_no);
                                                    $len = sizeof($e_phone_number_splitted);
                                                @endphp
                                                    @for($i = 0; $i < $len ; $i = $i + 1)
                                                        @php
                                                            $e_phone_number = $e_phone_number_splitted[$i];
                                                            $length = strlen($e_phone_number);
                                                        @endphp
                                                        @if(!is_numeric($e_phone_number[1]))
                                                            {{$e_phone_number}}
                                                        @else
                                                            @if($i != $len - 1)
                                                            {{$e_phone_number}}<a href = "tel:{{$e_phone_number}}"><i class="fa fa-phone" style="margin-left:5px;"></i></a>
                                                            @else
                                                            {{$e_phone_number}}<a href = "tel:{{$e_phone_number}}">&nbsp;<i class="fa fa-phone" style="margin-left:5px;"></i></a>
                                                            @endif
                                                        @endif
                                                        @if($i != $len - 1)
                                                            <br>
                                                        @endif
                                                    @endfor
                                                @endif
                                            </span>
                                             <span class="uk-text-small uk-text-muted hidden">Phone</span>
                                        </div>
                                    </li>
                                    @if($blood_donor->blood_donor_email_ad != '')    
                                    <li>
                                        <div class="md-list-addon-element">
                                            <i  style= "margin: 0" class="md-list-addon-icon material-icons">&#xE158;</i>
                                        </div>
                                        <div class="md-list-content">
    
                                            <span style="margin-top:5px" class="md-list-heading">
                                                {{$blood_donor->blood_donor_email_ad}}<a href = "mailto:{{$blood_donor->blood_donor_email_ad}}"><i class="fa fa-envelope-o" style="margin-left:5px;"></i></a>
                                            </span>
    
                                            <span class="uk-text-small uk-text-muted hidden">Email</span>
                                        </div>
                                    </li>
                                    @endif
    
                                    <li>
                                        <div class="md-list-addon-element">
                                           <i  style= "margin: 0" class="md-list-addon-icon material-icons">language</i> 
                                        </div>
    
    
                                        <div class="md-list-content">
                                            <span style="margin-top:5px" class="md-list-heading">{{$blood_donor->blood_donor_fb_link}}</span> <span class="uk-text-small uk-text-muted hidden">Facebook</span>
                                        </div>
                                    </li>
                                    <li class="hidden" >
                                        <div class="md-list-addon-element">
                                           <i  style= "margin: 0" class="md-list-addon-icon material-icons">language</i> 
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="uk-width-large-1-1 uk-margin-medium-top">
                            <h4 class="heading_c uk-margin-small-bottom uk-margin-small-top">General Info</h4>
                            <ul class="md-list uk-margin-small-top">
                            <?php echo $blood_donor->blood_donor_general_info; ?>
                            <!--
                                <li>
                                    <div class="md-list-content">
                                        <span class="hidden">General:</span> <span><?php #echo $blood_donor->blood_donor_general_info; ?></span>
                                    </div>
                                </li>
                            -->
                            </ul> 
                        </div>
                            
                                                                                                        
                        <!-- START google maps -->
                        
                        @if( $blood_donor->blood_donor_latitude != '' && $blood_donor->blood_donor_longitude != '' )
                        
                        <div class="uk-width-large-1-1 google_maps_show">
                             <iframe 
                                src="https://www.google.com/maps/embed/v1/search?key=AIzaSyD3_tCn50Ef5Z2zUJxkXi26T486gIzIHp8&q={{ $blood_donor->blood_donor_latitude }}, {{ $blood_donor->blood_donor_longitude }}&zoom=15" frameborder="0" height="600" style="border:0; width:100%;" allowfullscreen>
                            </iframe>
                        </div>
                        
                        @endif
                        
                        <!-- END google maps -->
                            
                            
                    </li>
                    <li>
                        <ul class="md-list">
                        @foreach($prices as $price)
                            @php echo $price->package_details; @endphp
                        @endforeach
                        <!--
                            <li style="padding-top: 0px;">
                                <div class="md-list-content">
                                    @foreach($prices as $price)
                                        @php echo $price->package_details; @endphp
                                    @endforeach
                                </div>
                            </li>
                        -->
                        </ul>
                    </li>
                </li>
                </ul>
            </div>
        </div>
    </div>
    @endif

    <input id="backbuttonstate" type="text" value="0" style="display:none;" />
    <script>
    document.addEventListener('DOMContentLoaded', function () {
    var ibackbutton = document.getElementById("backbuttonstate");
    if (ibackbutton.value == "0") {
        // Page has been loaded for the first time - Set marker
        ibackbutton.value = "1";

        var msg = '{{Session::get('message')}}';
        var exist = '{{Session::has('message')}}';
        if(exist){
            alert(msg);
        }
    }
    else {
        // Back button has been fired.. Do Something different..
        location.reload(true);
    }
    }, false);
    </script>

@endsection