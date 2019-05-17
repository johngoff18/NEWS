// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
	$(document).on("turbolinks:click", function(){
	  $(".loading").show();
	});

	$(document).on("turbolinks:load", function(){
		$(".loading").hide();
  	var words = [
  	  {text: "Lorem", weight: 13},
  	  {text: "Ipsum", weight: 10.5},
  	  {text: "Dolor", weight: 9.4},
  	  {text: "Sit", weight: 8},
  	  {text: "Amet", weight: 6.2},
  	  {text: "Consectetur", weight: 5},
  		{text: "Adipiscing", weight: 5},
  	  {text: "Lorem", weight: 13},
  	  {text: "Ipsum", weight: 10.5},
  	  {text: "Dolor", weight: 9.4},
  	  {text: "Sit", weight: 8},
  	  {text: "Amet", weight: 6.2},
  	  {text: "Consectetur", weight: 5},
  		{text: "Adipiscing", weight: 5}
  	];
  	$('#keywords').jQCloud(words);	  
	});
	
