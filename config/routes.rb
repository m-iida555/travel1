Rails.application.routes.draw do

  devise_for :installs
  devise_for :users
  devise_scope :user do
  delete 'logout', to: 'devise/sessions#destroy'
end

  
  
  get 'reservations/top'
  get 'reservations/hotel_index'
  post 'logins/new'

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  resources :users ,except:[:new,:create]
  resources :reservations
  resources :passwords
  resources :logins

end
