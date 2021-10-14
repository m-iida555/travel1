Rails.application.routes.draw do

  devise_for :users

  
  
  get 'reservations/top'
  get 'reservations/hotel_index'
  post 'logins/new'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  resources :users ,except:[:new,:create]
  resources :reservations
  resources :passwords
  resources :logins

end
