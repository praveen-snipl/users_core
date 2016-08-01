var home_page_script = function () {
	get_the_user("");

	$(document).delegate(".edit_user_eone", "click", function(e){
		e.preventDefault();
		var user_id = $(this).attr("data-user-id");
		get_the_user(user_id);
	});
};

function get_the_user(user_id){
	path = '/users/'+user_id+"/edit"
	if(user_id.length == 0){
		path = '/users/new'
	}
			$("#user_edit_eone").html('<div id="floatingCirclesG"><div class="f_circleG" id="frotateG_01"></div><div class="f_circleG" id="frotateG_02"></div><div class="f_circleG" id="frotateG_03"></div><div class="f_circleG" id="frotateG_04"></div><div class="f_circleG" id="frotateG_05"></div><div class="f_circleG" id="frotateG_06"></div><div class="f_circleG" id="frotateG_07"></div><div class="f_circleG" id="frotateG_08"></div></div>');
	$.ajax({
		url: path,
		type: 'GET',
		beforesend: function(data){
			$("#user_edit_eone").html('<div id="floatingCirclesG"><div class="f_circleG" id="frotateG_01"></div><div class="f_circleG" id="frotateG_02"></div><div class="f_circleG" id="frotateG_03"></div><div class="f_circleG" id="frotateG_04"></div><div class="f_circleG" id="frotateG_05"></div><div class="f_circleG" id="frotateG_06"></div><div class="f_circleG" id="frotateG_07"></div><div class="f_circleG" id="frotateG_08"></div></div>');
		},
		success: function(data){
			$("#user_edit_eone").html(data);
		}, failure: function(data){
			alert(data);
		}
	})
}

$(document).ready(home_page_script);