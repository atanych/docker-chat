class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat'
    BroadcastJob.perform_later('*** new user ***')
  end

  def unsubscribed
    BroadcastJob.perform_later('*** user has left chat ***')
  end

  def send_message(data)
    BroadcastJob.perform_later(data['message'])
  end
end
