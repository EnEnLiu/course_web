Rails.application.routes.draw do
  devise_for :users
  root to: 'courses#index'

  resources :courses

  mount Api::ApiRoot => '/api'
end
