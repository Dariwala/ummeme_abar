@extends('layouts.admin_master')

@section('title', 'Vaccination Center')

@section('angular')
    <script src="{{url('app/admin/vaccine_point/vaccine_point.module.js')}}"></script>
    <script src="{{url('app/admin/vaccine_point/vaccine_point.controller.js')}}"></script>
    <script src="{{url('app/admin/vaccine_point/vaccine_point.doctor_controller.js')}}"></script>
@endsection

@section('content')
<style type="text/css">
    tr:nth-child(even) 
    {
        background-color: #f2f2f2;
    }
</style>
<div id="page_content">
        <div id="page_content_inner">
            <div class="uk-grid" data-uk-grid-margin="" data-uk-grid-match="" id="user_profile">
                <div class="uk-width-large-1-1">
                @include('partials.flash_message')
                    <div class="md-card">
                        <div class="user_heading">
                            <div class="user_heading_avatar" style="width:100%;margin-left: calc(50% - 41px);margin-top:16px;">
                                @if($vaccine_point->photo_path == '')
                                <div class="thumbnail"><img alt="vaccine point"  src="{{asset('/vaccination.jpg')}}">
                                </div>
                                @else
                                <div class="thumbnail"><img alt="vaccine point" src="{{ url($vaccine_point->photo_path) }}">
                                </div>
                                @endif
                            </div>


                            <div class="user_heading_content" style="display:table;margin:0 auto;">
                                <h2 class="heading_b"><span style="margin: 10px;" class="uk-text-truncate">{{ $vaccine_point->vaccine_point_name}}</span>
                                </h2>
                            </div>
                        </div>


                        <div class="user_content">
                            <ul class="uk-tab" data-uk-sticky="{ top: 48, media: 960 }" data-uk-tab="{connect:'#user_profile_tabs_content', animation:'slide-horizontal'}" id="user_profile_tabs">
                                <li class="uk-active">
                                    <a style="text-align: center;" href="#">Info</a>
                                </li>

                                <li>
                                    <a style="text-align: center;" href="#">About</a>
                                </li>
                                <li>
                                    <a style="text-align: center;" href="#">Article</a>
                                </li>
                                <li>
                                    <a style="text-align: center;" href="#">Doctor</a>
                                </li>
                                <li>
                                    <a style="text-align: center;" href="#">Service</a>
                                </li>
                            </ul>


                            <ul class="uk-switcher uk-margin" id="user_profile_tabs_content">
                                <li ng-controller="VaccinePointController">
                                    {!! Form::open(['url' => array('vaccine-point/edit/info', $vaccine_point->id), 'method' => 'POST', 'files' => true]) !!}
                                        <div class="uk-grid" data-uk-grid-margin>

                                        <input type="hidden" ng-init="vaccine_point_id='asdfg'" value="{{$vaccine_point_id}}" name="vaccine_point_id" ng-model="vaccine_point_id">


                                            <div class="uk-width-medium-1-2">
                                                <select id="district_id" name="district_id" ng-model="district_id" ng-change="getSubdistrict()" required>
                                                </select>
                                            </div>
                                            <div class="uk-width-medium-1-2" >
                                                <select id="subdistrict_id" name="subdistrict_id" ng-model="subdistrict_id">
                                                </select>
                                            </div>

                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="vaccine_point_name"> Title<span class="req">*</span></label>
                                                    <input type="text" id="vaccine_point_name" name="vaccine_point_name" value="{{ $vaccine_point->vaccine_point_name}}" required class="md-input" /> 
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="b_vaccine_point_name"> শিরোনাম<span class="req">*</span></label>
                                                    <input type="text" id="b_vaccine_point_name" name="b_vaccine_point_name" value="{{ $vaccine_point->b_vaccine_point_name}}" required class="md-input" /> 
                                                </div>
                                            </div>

                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="vaccine_point_subname"> Sub-Title<span class="req"></span></label>
                                                    <input type="text" id="vaccine_point_subname" name="vaccine_point_subname" value="{{ $vaccine_point->vaccine_point_subname}}" class="md-input" /> 
                                                </div>
                                            </div>

                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="b_vaccine_point_subname"> উপ-শিরোনাম<span class="req"></span></label>
                                                    <input type="text" id="b_vaccine_point_subname" name="b_vaccine_point_subname" value="{{ $vaccine_point->b_vaccine_point_subname}}" class="md-input" /> 
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row ">
                                                     <label for="add_publication_title">Vaccination Center Photo<span class="req"></span></label>
                                                </div>
                                                <div class="parsley-row uk-margin-top">
                                                    <input type="file" id="vaccine_point_photo" name="vaccine_point_photo" class="dropify"/>
                                                </div>
                                            </div>                                            
                                        </div>
                                        <div class="uk-float-right uk-margin-top">
                                            <button type="submit" class="md-btn md-btn-primary" style="background: #FD0100;color: #fff;">Submit</button>
                                        </div>
                                    {!! Form::close() !!}
                                </li>
                                <li ng-controller="VaccinePointController">
                                    {!! Form::open(['url' => array('vaccine-point/edit/about', $vaccine_point->id), 'method' => 'POST', 'files' => true]) !!}
                                        <div class="uk-grid " data-uk-grid-margin>
                                            
                                            <div class="uk-width-medium-1-2">
                                                <label for="vaccine_point_description">Description</label>
                                                <div class="parsley-row uk-margin-top">
                                                    <textarea class="md-input" id="vaccine_point_description" name="vaccine_point_description" cols="10" rows="3" data-parsley-trigger="keyup" > {{ $vaccine_point->vaccine_point_description}} </textarea>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <label for="b_vaccine_point_description">বর্ণনা</label>
                                                <div class="parsley-row uk-margin-top">
                                                    <textarea class="md-input" id="b_vaccine_point_description" name="b_vaccine_point_description" cols="10" rows="3" data-parsley-trigger="keyup" > {{ $vaccine_point->b_vaccine_point_description}} </textarea>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="vaccine_point_address">Address</label>
                                                    <textarea class="md-input" id="vaccine_point_address" name="vaccine_point_address" cols="10" rows="3" data-parsley-trigger="keyup" onkeydown="expandtext(this);" >{{$vaccine_point->vaccine_point_address}}</textarea>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="b_vaccine_point_address">ঠিকানা</label>
                                                    <textarea class="md-input" id="b_vaccine_point_address" name="b_vaccine_point_address" cols="10" rows="3" data-parsley-trigger="keyup" onkeydown="expandtext(this);" >{{$vaccine_point->b_vaccine_point_address}}</textarea>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="uk-grid uk-grid-medium form_section form_section_separator" data-uk-grid-match>
                                                    <div class="uk-width-8-10">
                                                        <div class="parsley-row uk-margin-top">
                                                            <label for="vaccine_point_phone_no">Phone</label>
                                                            <textarea class="md-input" id="vaccine_point_phone_no" name="vaccine_point_phone_no" cols="10" rows="3" data-parsley-trigger="keyup" onkeydown="expandtext(this);">{{$vaccine_point->vaccine_point_phone_no}}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="uk-grid uk-grid-medium form_section form_section_separator" data-uk-grid-match>
                                                    <div class="uk-width-10-10">
                                                        <div class="parsley-row uk-margin-top">
                                                            <label for="b_vaccine_point_phone_no">ফোন</label>
                                                            <textarea class="md-input" type="text" id="b_vaccine_point_phone_no" name="b_vaccine_point_phone_no" cols="10" rows="3" data-parsley-trigger="keyup" onkeydown="expandtext(this);" class="md-input">{{$vaccine_point->b_vaccine_point_phone_no}}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="uk-grid uk-grid-medium form_section form_section_separator" data-uk-grid-match>
                                                    <div class="uk-width-10-10">
                                                        <div class="parsley-row uk-margin-top">
                                                            <label for="vaccine_point_email_ad">Email</label>
                                                            <input type="text" id="vaccine_point_email_ad" name="vaccine_point_email_ad" value="{{ $vaccine_point->vaccine_point_email_ad }}" class="md-input" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="vaccine_point_web_link">Website</label>
                                                    <input type="text" id="vaccine_point_web_link" name="vaccine_point_web_link" value="{{ $vaccine_point->vaccine_point_web_link}}" class="md-input" /> 
                                                </div>
                                            </div>
                                            
                                            <!-- START longitude latitude field -->
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="vaccine_point_latitude">Latitude<span class="req"></span></label>
                                                    <input type="text" id="vaccine_point_latitude" name="vaccine_point_latitude" value="{{$vaccine_point->vaccine_point_latitude}}"  class="md-input" /> 
                                                </div>
                                            </div>
                                            
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="vaccine_point_longitude">Longitude<span class="req"></span></label>
                                                    <input type="text" id="vaccine_point_longitude" name="vaccine_point_longitude" value="{{$vaccine_point->vaccine_point_longitude}}"  class="md-input" /> 
                                                </div>
                                            </div>
                                            <!-- END   longitude latitude field -->
                                            
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="vaccine_point_total_bed">General Info</label>
                                                    <div class="parsley-row uk-margin-top">
                                                        <textarea type="text" id="vaccine_point_total_bed" name="vaccine_point_total_bed" value="{{ $vaccine_point->vaccine_point_total_bed}}" class="md-input">{{ $vaccine_point->vaccine_point_total_bed}}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="uk-width-medium-1-2">
                                                <div class="parsley-row uk-margin-top">
                                                    <label for="b_vaccine_point_total_bed">সাধারণ তথ্য</label>
                                                    <div class="parsley-row uk-margin-top">
                                                        <textarea type="text" id="b_vaccine_point_total_bed" name="b_vaccine_point_total_bed" value="{{ $vaccine_point->b_vaccine_point_total_bed}}" class="md-input">{{ $vaccine_point->b_vaccine_point_total_bed}}</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="uk-float-right uk-margin-top">
                                            <button type="submit" class="md-btn md-btn-primary" style="background: #FD0100;color: #fff;">Submit</button>
                                        </div>
                                    {!! Form::close() !!}
                                </li>
                                <li>
                                    <form action="">
                                        <div class="md-card">
                                            <div class="md-card-content">
                                                <div class="uk-overflow-container uk-margin-bottom">

                                                    <input type="hidden" ng-init="vaccine_point_id='asdfg'" value="{{$vaccine_point_id}}" name="vaccine_point_id" ng-model="vaccine_point_id">
                                                    
                                                    <div style="padding: 5px;margin-bottom: 10px;" class="dt_colVis_buttons"></div>
                                                    <table class="uk-table uk-table-align-vertical uk-table-nowrap tablesorter tablesorter-altair" id="data_table2">
                                                        <thead>
                                                            <tr>
                                                                <th data-priority="critical">Id</th>
                                                                <th data-priority="2">Created at</th>
                                                                <th data-priority="2">Updated at</th>
                                                                <th class="filter-false remove sorter-false uk-text-center" data-priority="1">Actions</th>
                                                            </tr>
                                                        </thead>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Created at</th>
                                                                <th>Updated at</th>
                                                                <th class="uk-text-center">Actions</th>
                                                            </tr>
                                                        </tfoot>
                                                        <tbody>
                                                        @foreach($vaccine_point_notices as $vaccine_point_notice)
                                                            <tr>
                                                                <td>1</td>
                                                                <td>{{ $vaccine_point_notice->created_at}}</td>
                                                                <td>{{ $vaccine_point_notice->updated_at}}</td>
                                                                <td class="uk-text-center">
                                                                    <a href="{{ url('vaccine-point/edit/notice/edit'.'/'.$vaccine_point_notice->id) }}" class="publication-edit" ><i class="md-icon material-icons uk-margin-right">&#xE254;</i></a>
                                                                    <a class="confirm3">
                                                                    <input class="confirm_id3" type="hidden" name="id3" value="{{$vaccine_point_notice->id}}">
                                                                    <i class="md-icon material-icons">&#xE872;</i></a>
                                                                </td>
                                                            </tr>
                                                         @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <!-- Add Publication plus sign -->
                                                @if(count($vaccine_point_notices)<1)
                                                <div class="md-fab-wrapper Publication-create">
                                                    <a id="add_Publication_name_button" href="{{ url('vaccine-point/edit/notice/add'.'/'.$vaccine_point_id) }}"  class="md-fab Publication-create">
                                                        <i class="material-icons" style="color:#FD0100">&#xE145;</i>
                                                    </a>
                                                </div>
                                                @endif
                                            </div>
                                        </div>
                                    </form>
                                </li>
                                
                                <li>
                                    {!! Form::open(['url' => array('vaccine-point/edit/doctor', $vaccine_point->id), 'method' => 'POST', 'files' => true]) !!}
                                        <div class="md-card">
                                            <div class="md-card-content">
                                                <div class="uk-overflow-container uk-margin-bottom">

                                                    <input type="hidden" ng-init="vaccine_point_id='asdfg'" value="{{$vaccine_point_id}}" name="vaccine_point_id" ng-model="vaccine_point_id">
                                                    
                                                    <div style="padding: 5px;margin-bottom: 10px;" class="dt_colVis_buttons"></div>
                                                    <table class="uk-table uk-table-align-vertical uk-table-nowrap tablesorter tablesorter-altair" id="data_table2">
                                                        <thead>
                                                            <tr>
                                                                <th data-priority="critical">Id</th>
                                                                <th data-priority="critical">Name</th>
                                                                <th data-priority="critical">Speciality</th>
                                                                <th data-priority="2">Created at</th>
                                                                <th data-priority="2">Updated at</th>
                                                                <th class="filter-false remove sorter-false uk-text-center" data-priority="1">Actions</th>
                                                            </tr>
                                                        </thead>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Name</th>
                                                                <th>Speciality</th>
                                                                <th>Created at</th>
                                                                <th>Updated at</th>
                                                                <th class="uk-text-center">Actions</th>
                                                            </tr>
                                                        </tfoot>
                                                        <tbody>
                                                        <?php  $i=1; ?>
                                                        @foreach($vaccine_point_doctors as $vaccine_point_doctor)
                                                            <tr>
                                                                <td><?php echo $i++; ?></td>
                                                                <td>{{ $vaccine_point_doctor->medicalSpecialist->medical_specialist_name}}</td>
                                                                <td>{{ $vaccine_point_doctor->medicalSpecialist->medical_specialist_subname}}</td>
                                                                <td>{{ $vaccine_point_doctor->created_at}}</td>
                                                                <td>{{ $vaccine_point_doctor->updated_at}}</td>
                                                                <td class="uk-text-center">
                                                                    <a href="{{ url('vaccine-point/edit/doctor/edit'.'/'.$vaccine_point_doctor->id) }}" class="publication-edit" ><i class="md-icon material-icons uk-margin-right">&#xE254;</i></a>
                                                                    <a class="confirm2">
                                                                    <input class="confirm_id2" type="hidden" name="id2" value="{{$vaccine_point_doctor->id}}">
                                                                    <i class="md-icon material-icons">&#xE872;</i></a>
                                                                </td>
                                                            </tr>
                                                         @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <!-- Add Publication plus sign -->

                                                <div class="md-fab-wrapper Publication-create">
                                                    <a id="add_Publication_name_button" href="{{ url('vaccine-point/edit/doctor/add'.'/'.$vaccine_point_id) }}"  class="md-fab Publication-create">
                                                        <i class="material-icons" style="color:#FD0100">&#xE145;</i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    {!! Form::close() !!}
                                </li>
                                <li>
                                    {!! Form::open(['url' => array('vaccine-point/edit/service', $vaccine_point->id), 'method' => 'POST', 'files' => true]) !!}
                                        <div class="md-card">
                                            <div class="md-card-content">
                                                <div class="uk-overflow-container uk-margin-bottom">

                                                    <input type="hidden" ng-init="vaccine_point_id='asdfg'" value="{{$vaccine_point_id}}" name="vaccine_point_id" ng-model="vaccine_point_id">
                                                    
                                                    <div style="padding: 5px;margin-bottom: 10px;" class="dt_colVis_buttons"></div>
                                                    <table class="uk-table uk-table-align-vertical uk-table-nowrap tablesorter tablesorter-altair" id="data_table2">
                                                        <thead>
                                                            <tr>
                                                                <th data-priority="critical">Id</th>
                                                                <th data-priority="2">Name</th>
                                                                <th data-priority="2">Created at</th>
                                                                <th data-priority="2">Updated at</th>
                                                                <th class="filter-false remove sorter-false uk-text-center" data-priority="1">Actions</th>
                                                            </tr>
                                                        </thead>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Id</th>
                                                                <th>Name</th>
                                                                <th>Created at</th>
                                                                <th>Updated at</th>
                                                                <th class="uk-text-center">Actions</th>
                                                            </tr>
                                                        </tfoot>
                                                        <tbody>
                                                        <?php  $i=1; ?>
                                                        @foreach($vaccine_point_services as $vaccine_point_service)
                                                            <tr>
                                                                <td><?php echo $i++; ?></td>
                                                                <td>{{ $vaccine_point_service->service->service_name}}</td>
                                                                <td>{{ $vaccine_point_service->created_at}}</td>
                                                                <td>{{ $vaccine_point_service->updated_at}}</td>
                                                                <td class="uk-text-center">
                                                                    <a href="{{ url('vaccine-point/edit/service/edit'.'/'.$vaccine_point_service->id) }}" class="publication-edit" ><i class="md-icon material-icons uk-margin-right">&#xE254;</i></a>
                                                                    <a class="confirm1">
                                                                    <input class="confirm_id1" type="hidden" name="id1" value="{{$vaccine_point_service->id}}">
                                                                    <i class="md-icon material-icons">&#xE872;</i></a>
                                                                </td>
                                                            </tr>
                                                         @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <!-- Add Publication plus sign -->

                                                <div class="md-fab-wrapper Publication-create">
                                                    <a id="add_Publication_name_button" href="{{ url('vaccine-point/edit/service/add'.'/'.$vaccine_point_id) }}"  class="md-fab Publication-create">
                                                        <i class="material-icons" style="color:#FD0100">&#xE145;</i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    {!! Form::close() !!}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')

<script type="text/javascript">
    CKEDITOR.replace('vaccine_point_description');
</script>

<script type="text/javascript">
    CKEDITOR.replace('b_vaccine_point_description');
    CKEDITOR.replace('vaccine_point_total_bed');
    CKEDITOR.replace('b_vaccine_point_total_bed');
</script>

<script type="text/javascript">
    $('.confirm1').click(function(){
        var id1 = $('.confirm_id1', $(this)).val();
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ok'
        }).then(function() {
            window.location.href = "/vaccine-point/edit/service/delete/"+id1;
        })
    });
</script>
<script type="text/javascript">
    $('.confirm2').click(function(){
        var id2 = $('.confirm_id2', $(this)).val();
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ok'
        }).then(function() {
            window.location.href = "/vaccine-point/edit/doctor/delete/"+id2;
        })
    });
</script>
<script type="text/javascript">
    $('.confirm3').click(function(){
        var id3 = $('.confirm_id3', $(this)).val();
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ok'
        }).then(function() {
            window.location.href = "/vaccine-point/edit/notice/delete/"+id3;
        })
    });
</script>

@endsection