Rails.application.routes.draw do
  resources :confesses, only: [:new, :create, :index, :destroy]
  devise_for :users
  root to: 'confesses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
