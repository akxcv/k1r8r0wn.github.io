# Navigation
$hamburgerIcon = $('.hamburger-icon').unbind()
$navMenu = $('.navigation-menu')

$navMenu.removeClass 'show'
$hamburgerIcon.on 'click', (e) ->
  e.preventDefault()
  $(this).toggleClass 'open'
  $navMenu.slideToggle ->
    if $navMenu.is(':hidden')
      $navMenu.removeAttr 'style'

# Skills chart
$chart = $('#chart')

if $chart.length > 0
  chart = undefined
  chart = new (Highcharts.Chart)({
    chart: {
      polar: true
      type: 'area'
      backgroundColor: null
      style: {
        fontFamily: 'Fira Mono'
      }
      renderTo: 'chart'
    }
    title: { text: 'My skillset chart' }
    pane: { size: '80%' }
    xAxis: [
      { categories: [
        'HTML'
        'ERB'
        'HAML'
        'Slim'
        'CSS'
        'SCSS'
        'Bootstrap'
        'Foundation'
        'JavaScript'
        'jQuery'
        'CoffeeScript'
      ] }
      { categories: [
        'Ruby'
        'Sinatra'
        'Ruby on Rails'
      ] }
      { categories: [
        'RSpec'
        'Capybara'
        'Cucumber'
      ] }
      { categories: [
        'SQLite'
        'MySQL'
        'PostgreSQL'
      ] }
      { categories: [
        'Adobe Photoshop'
        'Adobe Illustrator'
        'Sketch'
      ] }
      { categories: [
        'Statistics'
        'Python'
        'R'
        'SPSS'
        'MS Excel'
      ] }
      { categories: [
        'macOS'
        'Linux'
        'Windows'
      ] }
      { categories: [
        'Bash'
        'Git'
        'Docker'
        'CI'
      ] }
      { categories: [
        'Russian'
        'English'
        'French'
      ] }
    ]
    yAxis: {
      labels: {
        enabled: false
      }
    }
    tooltip: {
      pointFormat: '<span>{series.name}: <b>{point.y:,.0f}/10</b><br/>'
    }
    legend: {
      verticalAlign: 'bottom'
      layout: 'horizontal'
    }
    credits: {
      enabled: false
    }
    series: [
      {
        name: 'Front end'
        color: 'rgb(181,137,0)'
        data: [
          9
          8
          7
          8
          9
          8
          8
          7
          4
          5
          3
        ]
      }
      {
        name: 'Back end'
        color: 'rgb(220,50,47)'
        data: [
          7
          4
          6
        ]
        visible: false
        xAxis: 1
      }
      {
        name: 'TDD'
        color: 'rgb(108,113,196)'
        data: [
          5
          5
          3
        ]
        visible: false
        xAxis: 2
      }
      {
        name: 'Databases'
        color: 'rgb(203,75,22)'
        data: [
          5
          4
          4
        ]
        visible: false
        xAxis: 3
      }
      {
        name: 'Design'
        color: 'rgb(42,161,152)'
        data: [
          5
          4
          1
        ]
        visible: false
        xAxis: 4
      }
      {
        name: 'Analytics'
        color: 'rgb(211,54,130)'
        data: [
          5
          2
          3
          2
          5
        ]
        visible: false
        xAxis: 5
      }
      {
        name: 'OS'
        color: 'rgb(38,139,210)'
        data: [
          10
          6
          4
        ]
        visible: false
        xAxis: 6
      }
      {
        name: 'Dev tools'
        color: 'rgb(147,161,161)'
        data: [
          8
          5
          4
          3
        ]
        visible: false
        xAxis: 7
      }
      {
        name: 'Languages'
        color: 'rgb(133,153,0)'
        data: [
          10
          6
          2
        ]
        visible: false
        xAxis: 8
      }
    ]
    plotOptions: {
      series: {
        fillOpacity: .5
        events: {
          show: ->
            chart = @chart
            series = chart.series
            i = series.length
            otherSeries = undefined
            while i--
              otherSeries = series[i]
              if otherSeries != this and otherSeries.visible
                otherSeries.hide()
          legendItemClick: ->
            if @visible
              return false
        }
      }
    }
  })
