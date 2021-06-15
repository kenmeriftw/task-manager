Rails.application.routes.draw do
  get '/projects', to: 'project#index'

  resources :projects do
    resources :todos
  end
end
