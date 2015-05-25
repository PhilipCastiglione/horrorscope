
function set_like(p_cc_id) {
	var data_abs;
	$.get('/combo-like.html?cc_id='+ p_cc_id, function(data) {
		data_abs = Math.abs(data);
		if ((data) < 1) {
			$("#like-button").prop("title","Like Combo");
			$("#like-button").html('<span class="iconPlus"><i class="fa fa-heart-o"></i></span>Like Combo');
		} else {
			$("#like-button").prop("title","Unlike Combo");
			$("#like-button").html('<span class="iconPlus"><i class="fa fa-heart"></i></span>Unlike Combo');
		}
		$('#likes-count').text( data_abs + ' likes');
	});	
}

/*
function update_fontdiv() {
	
	var font_name = $("#font-dropdown option:selected").text();
	var fontchoice = $('#font-dropdown').val();
	var temp_url =  'http://' + window.location.host + 
		'/font-breakdown.html?cc_id=' + global_cc_id + '&font_id=' + fontchoice + 
		'&hex_colors=' + global_hex_colors +
		'&font_name=' + encodeURIComponent(font_name);
	$('#font-breakdown').load(temp_url);
}
*/


/* document ready is called on the load of viewcombo.html */
$(document).ready(function() {
	
	$('#like-button').click(function() {
		set_like(global_cc_id);
		return false;
	});
	
});