changeCountdown = ->
  max_length = 140
  micropost_content_length = jQuery("#micropost_content").val().length
  remaining_characters = max_length - micropost_content_length
  
  if (Math.abs remaining_characters) != 1
  	jQuery(".countdown").text remaining_characters + " characters remaining"
  else
  	jQuery(".countdown").text remaining_characters + " character remaining"

jQuery ->
  changeCountdown()
  $("#micropost_content").change changeCountdown
  $("#micropost_content").keyup changeCountdown
