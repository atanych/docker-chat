Rails.application.routes.draw do
  root 'welcome#index'
  mount ActionCable.server => '/cable'
end
