@extends('layouts.admin_master')

@section('title', 'Beauty Parlour & Spa')

@section('angular')
    <script src="{{url('app/admin/parlour/parlour.module.js')}}"></script>
    <script src="{{url('app/admin/parlour/parlour.service_controller.js')}}"></script>
@endsection


@section('content')
<div id="page_content">
    <div id="page_content_inner">
        <h3 class="heading_b uk-margin-bottom">Beauty Parlour & Spa</h3>
        @include('partials.flash_message')
        <div class="md-card"  ng-controller="ParlourServiceController">
            <div class="md-card-content">
                <div class="uk-overflow-container">
                    {!! Form::open(['url' => array('parlour/edit/service/add', $parlour_id), 'method' => 'post', 'class' => 'uk-form-stacked']) !!}
                        <div class="uk-grid" data-uk-grid-margin>
                            <div class="uk-width-medium-1-1">
                                <div class="uk-grid uk-grid-medium form_section form_section_separator" id="product_form_section" data-uk-grid-match>
                                    <div class="uk-width-9-12">
                                        <div class="uk-grid">
                                            <div class="uk-width-1-2">
                                                <div class="parsley-row">
                                                    <select id="service_id" name="service_id" ng-model="service_id" ng-change="getSubservice()" data-filter="contains">
                                                        
                                                    </select>
                                                </div>
                                                <p style="color:red;">{{ $errors->has('service_id')?$errors->first('service_id'):'' }}</p>
                                            </div>
                                        </div>
                                        <div class="uk-grid">
                                            <div class="uk-width-1-2">
                                                <label>Service</label>
                                                <div class="parsley-row">
                                                    <textarea class="md-input" id="parlour_service_description" name="parlour_service_description" cols="10" rows="3" data-parsley-trigger="keyup" ></textarea>
                                                </div>
                                                <p style="color:red;">{{ $errors->has('parlour_service_description')?$errors->first('parlour_service_description'):'' }}</p>
                                            </div>
                                            <div class="uk-width-1-2">
                                                <label>সেবা</label>
                                                <div class="parsley-row">
                                                    <textarea class="md-input" id="b_parlour_service_description" name="b_parlour_service_description" cols="10" rows="3" data-parsley-trigger="keyup" ></textarea>
                                                </div>
                                                <p style="color:red;">{{ $errors->has('b_parlour_service_description')?$errors->first('b_parlour_service_description'):'' }}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="uk-float-right">
                                    <button type="submit" class="md-btn md-btn-primary" style="background: #FD0100;color: #fff;">Submit</button>
                                </div>
                            </div>
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')

<script type="text/javascript">
    CKEDITOR.replace('parlour_service_description');
</script>

<script type="text/javascript">
    CKEDITOR.replace('b_parlour_service_description');
</script>

@endsection