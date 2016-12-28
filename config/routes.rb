Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  get 'pages/index'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/privacy'

  resources :questions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
