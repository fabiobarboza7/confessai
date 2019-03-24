Rails.application.routes.draw do
  resources :confesses, only: [:new, :create, :index]
  get 'confesses/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
