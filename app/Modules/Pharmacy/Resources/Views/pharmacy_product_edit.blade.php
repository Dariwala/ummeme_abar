@extends('layouts.admin_master')

@section('title', '24 Hours Pharmacy')
@section('angular')
    <script src="{{url('app/admin/pharmacy/pharmacy.module.js')}}"></script>
    <script src="{{url('app/admin/pharmacy/pharmacy.product_category_edit_controller.js')}}"></script>
@endsection

@section('content')
<div id="page_content">
    <div id="page_content_inner">
        <h3 class="heading_b uk-margin-bottom">24 Hours Pharmacy</h3>
        @include('partials.flash_message')
        <div class="md-card"  ng-controller="PharmacyProductEditController">
            <div class="md-card-content">
                <div class="uk-overflow-container">
                {!! Form::open(['url' => array('pharmacy/edit/product/edit', $product_id,$pharmacy_id), 'method' => 'post', 'class' => 'uk-form-stacked','files' => true]) !!}
                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-medium-1-1">

                        <input type="hidden" ng-init="pharmacy_product_id='asdfg'" value="{{$product_id}}" name="pharmacy_product_id" ng-model="pharmacy_product_id">

                            <div class="uk-grid uk-grid-medium form_section form_section_separator" id="product_form_section" data-uk-grid-match>
                                <div class="uk-width-9-12">
                                    <div class="uk-grid">
                                        <div class="uk-width-1-2">
                                            <label>Medicinal</label>
                                            <div class="parsley-row">
                                                <textarea class="md-input" id="pharmacy_product_description" name="pharmacy_product_description" cols="10" rows="3" data-parsley-trigger="keyup" ><?php echo $pharmacy_product->pharmacy_product_description; ?></textarea>
                                            </div>
                                        </div>
                                        <div class="uk-width-1-2">
                                            <label>ঔষধ-সম্বন্ধীয়</label>
                                            <div class="parsley-row">
                                                <textarea class="md-input" id="b_pharmacy_product_description" name="b_pharmacy_product_description" cols="10" rows="3" data-parsley-trigger="keyup" > <?php echo $pharmacy_product->b_pharmacy_product_description; ?></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="uk-width-medium-1-1">
                            <div class="uk-float-right uk-margin-top">
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
<script>
    $('#district_id').on('change',function(){
        var district_id = $('#district_id option:selected').val();
        var address = "/hospital/add/"+district_id;
        window.location=address;
    });
</script>

<script type="text/javascript">
    CKEDITOR.replace('pharmacy_product_description');
</script>
<script type="text/javascript">
    CKEDITOR.replace('b_pharmacy_product_description');
</script>
@endsection