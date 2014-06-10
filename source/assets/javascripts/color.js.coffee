$ ->
  $('.color-list li').each ->
    color = $(this).css('background-color')
    $(this).html(color)
    return
