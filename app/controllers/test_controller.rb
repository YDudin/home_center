class TestController < ApplicationController
  def index
    @user = User.new(first_name: 'July')
  end

  def create
    MqttWorker.perform_async

    head :ok
  end
end
