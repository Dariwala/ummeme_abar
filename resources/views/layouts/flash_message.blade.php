@if(Session::has('flash_message'))
	<!--<div class="uk-alert uk-alert-{{session('flash_notification')}}" data-uk-alert>
	    <a href="" class="uk-alert-close uk-close"></a>-->
		<h4 style="color:red;"> {{session('flash_message')}} </h4>
	<!--</div>-->
@endif