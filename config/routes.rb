Rails.application.routes.draw do
  root 'pages#home'

  get '/about', to: 'pages#about', as: 'about'
  
  get '/bba', to: 'pages#bba', as: 'bba'
  get '/bcom', to: 'pages#bcom', as: 'bcom'
  get '/pu', to: 'pages#pu', as: 'pu'

  get '/contact-us', to: 'contacts#new', as: '/contact-us'
  post '/thanks' => "contacts#create", as: :thanks 
  get '/thanks', to: 'contacts#thanks'
  
end
