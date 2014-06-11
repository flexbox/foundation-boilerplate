$ ->
  $('.color-list li').each ->
    myColor = $(this).css('background-color')
    $(this).html(myColor)
    return

  $('.js-type').each ->
    myType = $(this).css('font-family')
    myWeight = $(this).css('font-weight')

    $(this).append('<p>' + myType + ' ' + myWeight + '</p>')
    return
