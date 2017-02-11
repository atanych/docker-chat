class BroadcastWorker
  include Sidekiq::Worker

  def perform(message)
    ActionCable.server.broadcast('chat', message: message)
  end
end
