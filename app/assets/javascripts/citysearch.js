/* global $ */
$(document).on('turbolinks:load', function(){
	var city = $('#citysearch_form');
	var submitBtn = $('#form-city-search');

	submitBtn.click(function(event){
		
		event.preventDefault();
		submitBtn.val("Processing").prop('disabled', true);

		var cityFind = $('#cityfind').val(),

		var idCity = [""];
		$(@newrally).each(function( index )){

			if(cityFind === $( this ).text() ){
				idCity.push( index );
			}

		}

		
		city.append( $('<input type= "hidden" name="citysearch">').val(idCity) );
		prompt("It worked");
		city.get(0).submit();
	})





});