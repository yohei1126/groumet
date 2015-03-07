expire = (merNo) ->
  $('#mer' + merNo + '_tr').remove()
  $('#message').append("order for the merchant " + merNo + " is expired.</br>")

init = ->
  now = new Date()
  exp1 = new Date(now.getTime() + (90 * 1000))
  exp2 = new Date(now.getTime() + (80 * 1000))

  $('#TimeLeft1').countdown(
    layout:'{mn} {ml}, {sn} {sl}'
    until: exp1
    onExpiry: ->
      expire(1)
  )
  $('#TimeLeft2').countdown(
    layout:'{mn} {ml}, {sn} {sl}'
    until: exp2
    onExpiry: ->
      expire(2)
  )

$(document).ready(init)
