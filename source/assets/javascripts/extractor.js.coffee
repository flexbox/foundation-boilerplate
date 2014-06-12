$ ->
  $('.color-list li').each ->
    myColor = $(this).css('background-color')
    $(this).html(myColor)
    return

  $('.js-type').each ->
    mySize = $(this).css('font-size')
    myType = $(this).css('font-family')
    myWeight = $(this).css('font-weight')

    $(this).append('<p class="m-extrator--content no-margin">' + myType + '</p>')
    $(this).append('<p class="m-extrator--content">size: ' + mySize + ' - weight: ' + myWeight + '</p>')
    return
