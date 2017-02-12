class BroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast('chat', message: message)
  end
end
