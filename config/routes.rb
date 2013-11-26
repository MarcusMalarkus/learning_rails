Awesomeness::Application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: [:index, :new, :create]

  get '/complete_status', to: 'todos#status'
end
