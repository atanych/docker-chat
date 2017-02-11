App.game = App.cable.subscriptions.create "GameChannel",
  received: (data) ->
    console.log('received data', data)
    @printMessage(data.message)

  printMessage: (message) ->
    $("#messages").append("<div>#{message}</div>")
