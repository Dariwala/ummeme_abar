@extends('layouts.frontend_master_02')

@section('title', 'Report Delivery')

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
                        echo $data->report_delivery;
                        @endphp
                        </div> 
                        <div class="uk-width-medium-1-2">
                            {!! Form::open(['url' => 'report_delivery/post', 'method' => 'POST', 'class' => 'ul-form-stacked', 'files' => true]) !!}
                                <div class="uk-grid" data-uk-grid-margin style="margin-top: 15px;">
                                    <div class="uk-width-medium-1-1">
                                        <h4></h4>
                                        <div class="uk-width-1-1 uk-margin-top">
                                            <div class="parsley-row">
                                                <label for="name">Name <span class="req">*</span></label><br>
                                                <input type="text" id="name" name="name" value="" required style="width:calc(100% - 8px);height:25px;padding-left:6px;"></input><br><br>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="email">Address<span class="req">*</span></label><br>
                                                <textarea type="text" id="address" name="address" class="txta" value="" required style="width:calc(100% - 8px);font-family:'Helvetica', Arial, Lucida Grande, sans-serif;resize:none;overflow:hidden;vertical-align:top;line-height:1.4;height:20px;min-height:20px;padding-top:6px;padding-left:6px;"></textarea><br><br>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="subject">Contact Number <span class="req">*</span></label><br>
                                                <input type="text" id="phone_number" name="phone_number" value="" required style="width:calc(100% - 8px);height:25px;padding-left:6px;"></input>
                                            </div>
                                            <br>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row ">
                                                     <label for="add_publication_title">Paid Money Receipt<span class="req"></span></label>
                                                </div>
                                                <div class="parsley-row uk-margin-top">
                                                    <input type="file" id="user_photo" name="user_photo" class="dropify" required/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="uk-float-right uk-margin-top">
                                    <button type="submit" class="md-btn md-btn-large" style="background: #FD0100;color: #fff;">Send</button>
                                </div>
                            {!! Form::close() !!}
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
                        @php
                            echo $data->b_report_delivery;
                        @endphp
                        </div>
                        <div class="uk-width-medium-1-2">
                            {!! Form::open(['url' => 'report_delivery/post', 'method' => 'POST', 'class' => 'ul-form-stacked', 'files' => true]) !!}
                                <div class="uk-grid" data-uk-grid-margin style="margin-top: 15px;">
                                    <div class="uk-width-medium-1-1">
                                        <h4></h4>
                                        <div class="uk-width-1-1 uk-margin-top">
                                            <div class="parsley-row">
                                                <label for="name">নাম <span class="req">*</span></label><br>
                                                <input type="text" id="name" name="name" value="" required style="width:calc(100% - 8px);height:25px;padding-left:6px;"></input><br><br>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="email">ঠিকানা <span class="req">*</span></label><br>
                                                <textarea type="text" id="address" name="address" value="" required class="txta" style="width:calc(100% - 8px);font-family: 'Helvetica', Arial, Lucida Grande, sans-serif;resize:none;overflow:hidden;vertical-align:top;line-height:1.4;height:20px;min-height:20px;padding-top:6px;padding-left:6px;"></textarea><br><br>
                                            </div>
                                            <div class="parsley-row uk-margin-top">
                                                <label for="subject">যোগাযোগের নম্বর <span class="req">*</span></label><br>
                                                <input type="text" id="phone_number" name="phone_number" value="" required style="width:calc(100% - 8px);height:25px;padding-left:6px;"></input>
                                            </div>
                                            <br>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row ">
                                                     <label for="add_publication_title">পরিশোধিত টাকার রশিদ<span class="req"></span></label>
                                                </div>
                                                <div class="parsley-row uk-margin-top">
                                                    <input type="file" id="user_photo" name="user_photo" class="dropify" required/>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="uk-float-right uk-margin-top" style="margin-left:6px;">
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
    <script type="text/javascript">
        // Targets all textareas with class "txta"
        let textareas = document.querySelectorAll('.txta'),
        hiddenDiv = document.createElement('div'),
        content = null;

        // Adds a class to all textareas
        for (let j of textareas) {
        j.classList.add('txtstuff');
        }

        // Build the hidden div's attributes

        // The line below is needed if you move the style lines to CSS
        // hiddenDiv.classList.add('hiddendiv');

        // Add the "txta" styles, which are common to both textarea and hiddendiv
        // If you want, you can remove those from CSS and add them via JS
        hiddenDiv.classList.add('txta');
        //hiddenDiv.style.width = '100%';

        // Add the styles for the hidden div
        // These can be in the CSS, just remove these three lines and uncomment the CSS
        hiddenDiv.style.display = 'none';
        hiddenDiv.style.whiteSpace = 'pre-wrap';
        hiddenDiv.style.wordWrap = 'break-word';

        // Loop through all the textareas and add the event listener
        for(let i of textareas) {
        (function(i) {
            // Note: Use 'keyup' instead of 'input'
            // if you want older IE support
            i.addEventListener('input', function() {
            
            // Append hiddendiv to parent of textarea, so the size is correct
            i.parentNode.appendChild(hiddenDiv);
            
            // Remove this if you want the user to be able to resize it in modern browsers
            i.style.resize = 'none';
            
            // This removes scrollbars
            i.style.overflow = 'hidden';

            // Every input/change, grab the content
            content = i.value;

            // Add the same content to the hidden div
            
            // This is for old IE
            content = content.replace(/\n/g, '<br>');
            
            // The <br ..> part is for old IE
            // This also fixes the jumpy way the textarea grows if line-height isn't included
            hiddenDiv.innerHTML = content;

            // Briefly make the hidden div block but invisible
            // This is in order to read the height
            hiddenDiv.style.visibility = 'hidden';
            hiddenDiv.style.display = 'block';
            i.style.height = hiddenDiv.offsetHeight + 'px';

            // Make the hidden div display:none again
            hiddenDiv.style.visibility = 'visible';
            hiddenDiv.style.display = 'none';
            });
        })(i);
        }
    </script>
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

        var contact_message = '{{Session::get('delivery_message')}}';
        var contact = '{{Session::has('delivery_message')}}';
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