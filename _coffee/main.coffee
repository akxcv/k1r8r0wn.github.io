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
      return
    return
  return

# Heading parallax

parallax = ->
  if $('.heading-wrapper').length > 0
    plxBackground = $('.background-image')
    plxWindow = $('.heading-wrapper')
    plxWindowTopToPageTop = $(plxWindow).offset().top
    windowTopToPageTop = $(window).scrollTop()
    plxWindowTopToWindowTop = plxWindowTopToPageTop - windowTopToPageTop
    plxBackgroundTopToPageTop = $(plxBackground).offset().top
    windowInnerHeight = window.innerHeight
    plxBackgroundTopToWindowTop = plxBackgroundTopToPageTop - windowTopToPageTop
    plxBackgroundTopToWindowBottom = windowInnerHeight - plxBackgroundTopToWindowTop
    plxSpeed = 0.35
    plxBackground.css 'top', -(plxWindowTopToWindowTop * plxSpeed) + 'px'
  return

$(document).ready ->
  if $('.heading-wrapper').length
    parallax()
  return
$(window).scroll (e) ->
  if $('.heading-wrapper').length
    parallax()
  return
