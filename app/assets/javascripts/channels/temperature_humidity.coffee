App.temperature_humidity = App.cable.subscriptions.create "TemperatureHumidityChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $(temperature_sensor).html(data.temperature)
    $(humidity_sensor).html(data.humidity)
