Rails.application.routes.draw do
  root to: 'projects#index'
  
  resources :todos, only: :create

  resources :projects, only: %w[index show create] do
    resources :todos, only: %w[index show update]
  end
end
