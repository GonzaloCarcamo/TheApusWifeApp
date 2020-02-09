Rails.application.routes.draw do
  get 'babies/index'
  
  resources :breasts
  resources :babies

  root 'babies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
