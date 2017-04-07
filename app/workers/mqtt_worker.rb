class MqttWorker
  include Sidekiq::Worker

  def perform()
    begin
      temp = 25
      humidity = 40
      10.times do
        sleep 5
        ActionCable.server.broadcast 'temperature_humidity_channel',
                                     temperature: temp,
                                     humidity: humidity
        humidity += 1
        temp += 1
      end
    rescue => ex
      puts ex
    end
  end
end
