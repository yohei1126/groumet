remove = (marchant) ->
  console.log(marchant + 'remove!')

init = ->

  newYear = new Date()
  newYear = new Date(2015, 3 - 1, 7, 21, 59)
  $('#TimeLeft1').countdown(
    layout:'{mn} {ml}, {sn} {sl}'
    until: newYear
    onExpiry: ->
      remove('marchant1')
  )
  $('#TimeLeft2').countdown(
    layout:'{mn} {ml}, {sn} {sl}'
    until: newYear
    onExpiry: ->
      remove('marchant2')
  )

$(document).ready(init)
