mer1_config =
  min: 10
  cur: 8
mer2_config =
  min: 6
  cur: 5

update = ->
  $("#mer1_min").text(mer1_config.min)
  $("#mer1_cur").text(mer1_config.cur)
  if mer1_config.min is mer1_config.cur
      $("#message").append("delivery was sent to the merchant 1.<br/>")
      $('#TimeLeft1').countdown('destroy')
      $("#mer1_tr").remove()
      mer1_config.cur = 0

  $("#mer2_min").text(mer2_config.min)
  $("#mer2_cur").text(mer2_config.cur)
  if mer2_config.min is mer2_config.cur
      $("#message").append("delivery was sent to the merchant 2.<br/>")
      $('#TimeLeft2').countdown('destroy')
      $("#mer2_tr").remove()
      mer2_config.cur = 0

  
receive_order = (mer) ->
  mer1_config.cur += mer.num if mer.merchant is 1
  mer2_config.cur += mer.num if mer.merchant is 2
  update()

init = ->
  $("#mer1_min").text(mer1_config.min)
  $("#mer1_cur").text(mer1_config.cur)
  $("#mer2_min").text(mer2_config.min)
  $("#mer2_cur").text(mer2_config.cur)
  
  pubnub = PUBNUB.init(
    publish_key: 'demo',
    subscribe_key: 'demo'
  );
  pubnub.subscribe(
      channel: 'groumet',
      message:  (m) ->
        receive_order(m)
  )
  
  $("#order1").click((e) ->
      console.log('order1')
      pubnub.publish (
          channel: 'groumet',
          message:
            "merchant":1
            "num":1
          )
  )
  $("#order2").click((e) ->
      console.log('order2')
      pubnub.publish (
          channel: 'groumet',
          message:
            "merchant":2
            "num":1
          )
  )


$(document).ready(init)