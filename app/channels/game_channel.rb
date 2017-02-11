class GameChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat'
    ActionCable.server.broadcast('chat', message: '*** new user ***')
  end

  def unsubscribed
    ActionCable.server.broadcast('chat', message: '*** user has left chat ***')
  end

  def send_message(data)
    ActionCable.server.broadcast('chat', data)
  end
end
