Rgb2Hex = (rgb) ->
  hex = (x) ->
    (if isNaN(x) then "00" else hexDigits[(x - x % 16) / 16] + hexDigits[x % 16])
  hexDigits = [
    "0"
    "1"
    "2"
    "3"
    "4"
    "5"
    "6"
    "7"
    "8"
    "9"
    "a"
    "b"
    "c"
    "d"
    "e"
    "f"
  ]
  rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/)
  "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3])

extractColor = ->
  $('.js-color-list').find('.column').each ->
    myColor = $(@).css('background-color')
    myHexa = Rgb2Hex(myColor)
    $(@).html(myHexa)
    $(@).append('<p class="m-extrator--content no-margin">' + @className + '</p>')

extractType = ->
  $('.js-type').each ->
    mySize = $(@).css('font-size')
    myType = $(@).css('font-family')
    myWeight = $(@).css('font-weight')

    $(@).append('<p class="m-extrator--content no-margin">' + myType + '</p>')
    $(@).append('<p class="m-extrator--content">size: ' + mySize + ' - weight: ' + myWeight + '</p>')

$ ->
  extractColor()
  extractType()
