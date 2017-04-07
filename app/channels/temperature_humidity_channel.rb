class TemperatureHumidityChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'temperature_humidity_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
