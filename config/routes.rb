Rails.application.routes.draw do

  #devise_for :installs
  devise_for :users, controllers: { sessions: 'users/sessions' }

  
  
  get 'reservations/top'
  get 'reservations/hotel_index'
  post 'reservations/user_params'
  get 'rooms', to: 'rooms#index'
  post 'reservations/confirm'
  post 'reservations/complete'
  #get '/reservations/new', to: redirect('/reservations/room_reserve.:%{id}', status: 301)
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  resources :users ,except:[:new,:create]
  resources :passwords
  resources :logins
  resources :rooms do
    #resources :reservations, only: [:create]
    member do
      get'room_list'
    end
  end
  resources :reservations

end
