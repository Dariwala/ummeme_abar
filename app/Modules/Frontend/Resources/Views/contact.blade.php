@extends('layouts.frontend_master_02')

@section('title', 'Contact')

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
        .txta{
            width:99.7%;
            min-height:100px;
            font-family: 'Helvetica', Arial, Lucida Grande, sans-serif;
            resize:none;
            overflow:hidden;
            vertical-align:top;
            line-height:1.4;
            height:20px;
            min-height:20px;
            padding-top:6px;
            padding-left:6px;
        }
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
                            echo $data->contact;
                            @endphp
                        </div> 
                        <!--<div class="uk-width-medium-1-2">
                            {!! Form::open(['url' => 'contact/post', 'method' => 'POST', 'class' => 'ul-form-stacked']) !!}
                                <div class="uk-grid" data-uk-grid-margin style="margin-top: 15px;">
                                    <div class="uk-width-medium-1-1">
                                        <h4></h4>
                                        <div class="uk-width-1-1 uk-margin-top">
                                            <div class="parsley-row">
                                                <label for="name">Name <span class="req">*</span></label>
                                                <textarea type="text" id="name" name="name" value="" required class="md-input" ></textarea>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="email">Email or Phone <span class="req">*</span></label>
                                                <textarea type="text" id="email" name="email" value="" required class="md-input" ></textarea>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="subject">Subject <span class="req">*</span></label>
                                                <textarea type="text" id="subject" name="subject" value="" required class="md-input" ></textarea>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="details">Details <span class="req">*</span></label>
                                                <textarea id="details" name="details" value="" required class="md-input"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="uk-float-right uk-margin-top">
                                    <button type="submit" class="md-btn md-btn-large" style="background: #FD0100;color: #fff;">Send</button>
                                </div>
                            {!! Form::close() !!}
                        </div>-->  
                        
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
                            @php
                            echo $data->b_contact;
                            @endphp
                        </div>
                        <div class="uk-width-medium-1-2">
                            {!! Form::open(['url' => 'contact/post', 'method' => 'POST', 'class' => 'ul-form-stacked']) !!}
                                <div class="uk-grid" data-uk-grid-margin style="margin-top: 15px;">
                                    <div class="uk-width-medium-1-1">
                                        <h4></h4>
                                        <div class="uk-width-1-1 uk-margin-top">
                                            <div class="parsley-row">
                                                <label for="name">নাম 
                                                <!-- <span class="req">*</span> -->
                                                </label>
                                                <textarea type="text" id="name" name="name" value="" required class="txta" style="width:calc(100% - 8px);font-family:'Helvetica', Arial, Lucida Grande, sans-serif;resize:none;overflow:hidden;vertical-align:top;line-height:1.4;height:20px;min-height:20px;padding-top:6px;padding-left:6px;"></textarea>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="email">ই-মেইল অথবা ফোন 
                                                <!-- <span class="req">*</span> -->
                                                </label>
                                                <textarea type="text" id="email" name="email" value="" class="txta" style="width:calc(100% - 8px);font-family:'Helvetica', Arial, Lucida Grande, sans-serif;resize:none;overflow:hidden;vertical-align:top;line-height:1.4;height:20px;min-height:20px;padding-top:6px;padding-left:6px;"></textarea>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="subject">বিষয় <span class="req">*</span></label>
                                                <textarea type="text" id="subject" name="subject" value="" required class="txta" style="width:calc(100% - 8px);font-family:'Helvetica', Arial, Lucida Grande, sans-serif;resize:none;overflow:hidden;vertical-align:top;line-height:1.4;height:20px;min-height:20px;padding-top:6px;padding-left:6px;"></textarea>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="details">বিস্তারিত <span class="req">*</span></label>
                                                <textarea id="details" name="details" value="" required class="txta" style="width:calc(100% - 8px);font-family:'Helvetica', Arial, Lucida Grande, sans-serif;resize:none;overflow:hidden;vertical-align:top;line-height:1.4;height:20px;min-height:20px;padding-top:6px;padding-left:6px;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="uk-float-right uk-margin-top">
                                    <button type="submit" class="md-btn md-btn-large" style="background: #FD0100;color: #fff;">পাঠিয়ে দিন</button>
                                </div>
                            {!! Form::close() !!}
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

        var contact_message = '{{Session::get('contact_message')}}';
        var contact = '{{Session::has('contact_message')}}';
        if(contact){
            alert(contact_message);
        }
    } else {
        // Back button has been fired.. Do Something different..
        location.reload(true);
    }
    }, false);
    </script>

@endsection