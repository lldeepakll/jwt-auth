Rails.application.routes.draw do
  resources :messages
  resources :users

  post '/auth/login', to: 'authentication#login'
  get 'users_messages/:user_id', to: 'messages#users_messages'
  get 'messages/:user_id/conversation/:receiver_id', to: 'messages#conversation'
end