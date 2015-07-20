sideNav = ->
  if $(window).width() < 769
    $('.off-canvas-wrap').removeClass 'move-right'
    $('.left-off-canvas-toggle').show()
  else
    $('.off-canvas-wrap').addClass 'move-right'
    $('.left-off-canvas-toggle').hide()
  return

$(window).resize ->
  sideNav()
  return
