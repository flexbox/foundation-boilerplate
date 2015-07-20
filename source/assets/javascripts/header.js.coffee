toggleNavigation = ->
  button = $('#js-menu--button')
  button.click (event) ->
    event.preventDefault()
    $('.js-header--list').toggleClass('is-on-viewport','is-away')

$ ->
  toggleNavigation()
