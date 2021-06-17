Rails.application.routes.draw do
  resources :todos, only: :create

  resources :projects, only: :index do
    resources :todos, only: :update
  end
end
