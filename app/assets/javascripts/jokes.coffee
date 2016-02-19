$ ->
  	$('.vote').bind 'click', ->
	    joke_id = $(this).attr('joke_id')
	    action = $(this).attr('action')
	    url = $(this).attr('bt_link')
	    $.ajax
	      type: 'GET'
	      url: url
	      data: joke_id: joke_id, action: action
	      dataType: 'json'
	      success: (data) ->
	        console.info(data)
	        return
  	return
return