$ ->
  $('.color-list li').each ->
    myColor = $(@).css('background-color')
    $(@).html(myColor)
    return

  $('.js-type').each ->
    mySize = $(@).css('font-size')
    myType = $(@).css('font-family')
    myWeight = $(@).css('font-weight')

    $(@).append('<p class="m-extrator--content no-margin">' + myType + '</p>')
    $(@).append('<p class="m-extrator--content">size: ' + mySize + ' - weight: ' + myWeight + '</p>')
    return
