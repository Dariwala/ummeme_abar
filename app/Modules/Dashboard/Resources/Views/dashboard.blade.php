@extends('layouts.admin_master')

@section('title', 'Dashboard')

@section('content')
    <div id="page_content">
        <div id="page_content_inner">

            <!-- statistics (small charts) -->
            <div class="uk-grid uk-grid-width-large-1-4 uk-grid-width-medium-1-2 uk-grid-medium uk-sortable sortable-handler hierarchical_show" data-uk-sortable data-uk-grid-margin>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">District</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$district}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_sale peity_data">5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Sub-District</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$sub_district}}<noscript>142384</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_orders peity_data">64/100</span></div>
                            <span class="uk-text-muted uk-text-small">Department</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$department}}<noscript>64</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_orders peity_data">64/100</span></div>
                            <span class="uk-text-muted uk-text-small">Service</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$service}}<noscript>64</noscript></span></h2>
                        </div>
                    </div>
                </div>
                
                
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">24 Hours Pharmacy</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$pharmacy}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Addiction Rehabilitation Center</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$addiction}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_sale peity_data">5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Air Ambulance</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$air_ambulance}}<noscript>142384</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_orders peity_data">64/100</span></div>
                            <span class="uk-text-muted uk-text-small">Ambulance</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$ambulance}}<noscript>64</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_orders peity_data">64/100</span></div>
                            <span class="uk-text-muted uk-text-small">Beauty Parlour & Spa</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$parlour}}<noscript>64</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_orders peity_data">64/100</span></div>
                            <span class="uk-text-muted uk-text-small">Blood Bank</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$blood_bank}}<noscript>64</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Blood Donor</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$blood_donor}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_sale peity_data">5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Doctors Panel</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$medical_specialist}}<noscript>142384</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_live peity_data">5,3,9,6,5,9,7,3,5,2,5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Eye Bank</span>
                            <h2 class="uk-margin-remove" id="peity_live_text">{{$eye_bank}}</h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Foreign Medical Information Center</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$foreignmedical}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Gym</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$gym}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_live peity_data">5,3,9,6,5,9,7,3,5,2,5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Health Care Center</span>
                            <h2 class="uk-margin-remove" id="peity_live_text">{{$hospital}}</h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Herbal Medicine Center</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$herbal_center}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Homeopathic Medicine Center</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$homeopathic}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Optics</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$optical}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Pharmacy</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$pharmacynew}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_visitors peity_data">5,3,9,6,5,9,7</span></div>
                            <span class="uk-text-muted uk-text-small">Physiotherapy & Rehabilitation Center</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$physiotherapy}}<noscript>12456</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_sale peity_data">5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Skin Care & Laser Center</span>
                            <h2 class="uk-margin-remove"><span class="countUpMe">{{$skin_laser_center}}<noscript>142384</noscript></span></h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_live peity_data">5,3,9,6,5,9,7,3,5,2,5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Vaccination Center</span>
                            <h2 class="uk-margin-remove" id="peity_live_text">{{$vaccine_point}}</h2>
                        </div>
                    </div>
                </div>
                <div class="uk-margin-top">
                    <div class="md-card">
                        <div class="md-card-content">
                            <div class="uk-float-right uk-margin-top uk-margin-small-right"><span class="peity_live peity_data">5,3,9,6,5,9,7,3,5,2,5,3,9,6,5,9,7,3,5,2</span></div>
                            <span class="uk-text-muted uk-text-small">Yoga Center</span>
                            <h2 class="uk-margin-remove" id="peity_live_text">{{ $yoga }}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection