Rails.application.routes.draw do

  #devise_for :installs
  devise_for :users, controllers: { sessions: 'users/sessions' }

  
  
  get 'reservations/top'
  get 'reservations/hotel_index'
  post 'reservations/user_params'
  #get '/reservations/new', to: redirect('/reservations/room_reserve.:%{id}', status: 301)
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  resources :users ,except:[:new,:create]
  resources :reservations
  resources :passwords
  resources :logins
  resources :rooms do
    resources :reservations, only: [:create]
  end

end
