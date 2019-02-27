Rails.application.routes.draw do
  root 'doctors#index'

  resources :doctors
  
  resources :users do
    resources :appointments, only: [:index, :new, :create, :destroy]  
  end
end
