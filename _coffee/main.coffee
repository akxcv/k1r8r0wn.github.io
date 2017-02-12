# Navigation

$(document).ready ->
  $hamburgerIcon = $('.hamburger-icon').unbind()
  $navMenu = $('.navigation-menu')

  $navMenu.removeClass 'show'
  $hamburgerIcon.on 'click', (e) ->
    e.preventDefault()
    $(this).toggleClass 'open'
    $navMenu.slideToggle ->
      if $navMenu.is(':hidden')
        $navMenu.removeAttr 'style'
