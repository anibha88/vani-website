Rails.application.routes.draw do
  root 'pages#home'

  get '/about', to: 'pages#about', as: 'about'
  # get '/contact', to: 'pages#contact', as: 'contact'
  get '/mba', to: 'pages#mba', as: 'mba'
  get '/bcom', to: 'pages#bcom', as: 'bcom'
  get '/pu', to: 'pages#pu', as: 'pu'

  resources :contacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
