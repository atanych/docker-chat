class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat'
    BroadcastWorker.perform_async('*** new user ***')
  end

  def unsubscribed
    BroadcastWorker.perform_async('*** user has left chat ***')
  end

  def send_message(data)
    BroadcastWorker.perform_async(data['message'])
  end
end
