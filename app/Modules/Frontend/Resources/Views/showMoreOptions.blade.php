@extends('layouts.frontend_master_02')

@section('title', 'More')

@section('angular')
    <script src="{{url('app/frontend/frontend/pharmacy.view.js')}}"></script>
    <script src="{{url('app/frontend/frontend/pharmacy.b_view.js')}}"></script>
@endsection

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
            padding-top: 25px;
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
        /* ul{
    	    display: block;
    	    list-style: none;
    	    text-align: center;
    	    padding-left: 0px;
    	}
    	
    	ul li{
    	    margin-top: 10px;
    	    text-align: center;
    	}
    	
    	ul li a{
    	    text-align: center;
    	    margin: 0px 10px;
    	}
    	
    	ul li a span{
    	    color: red; 
    	    border-bottom: 1px dotted #000;
    	    text-decoration: none;
    	} */
        /* a span{
            color: red;
            text-decoration: none;
        } */
    </style>

@endsection

@section('content')

    @if(Session('language')=='en')
        <div class="uk-width-large-7-10" oncopy="return false" oncut="return false" onpaste="return false">
            <div class="md-card">
                <div class="user_content">
                    <div class="uk-grid" data-uk-grid-margin>   
                        <div class="uk-width-medium-1-1">
                            @php
                            echo $data->notice;
                            @endphp
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    @else
        <div class="uk-width-large-7-10" oncopy="return false" oncut="return false" onpaste="return false">
            <div class="md-card">
                <div class="user_content">
                    <div class="uk-grid" data-uk-grid-margin>   
                        <div class="uk-width-medium-1-1">
                            <!-- <ul>
                                <li>
                                    <a style="color:red;" href="{{url('/service-entry')}}"><span><strong>আপনার সেবা যুক্ত করুন</strong></span></a>
                                </li>
                                <li>
                                    <a href="{{url('/contact')}}"><span><strong>যোগাযোগ</strong></span></a>
                                </li>
                                <li>
                                    <a href="{{url('/vision')}}"><span><strong>সম্বন্ধে</strong></span></a>
                                </li>
                                <li>
                                    <a href="{{url('/faq')}}"><span><strong>সাধারণ জিজ্ঞাসা</strong></span></a>
                                </li>
                                <li>
                                    <a href="{{url('/make-appointment')}}"><span><strong>সাক্ষাৎ</strong></span></a>
                                </li>
                                <li>
                                    <a href="{{url('/services-list')}}"><span><strong>সেবা সমূহ</strong></span></a>
                                </li>
                            </ul> -->
                            <a style="color:red;" href="{{url('/vision')}}"><span><strong>সম্বন্ধে</strong></span></a>
                            <br></br>
                            <a style="color:red;" href="{{url('/faq')}}"><span><strong>সাধারণ জিজ্ঞাসা</strong></span></a>
                            <br></br>
                            <a style="color:red;" href="{{url('/services-list')}}"><span><strong>সেবা সমূহ</strong></span></a>
                            <br></br>
                            <a style="color:red;" href="{{url('/contact')}}"><span><strong>যোগাযোগ</strong></span></a>
                            <br></br>
                            <a style="color:red;" href="{{url('/service-entry')}}"><span><strong>আপনার সেবা যুক্ত করুন</strong></span></a>
                        </div> 
                    </div>
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