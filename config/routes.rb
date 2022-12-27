Rails.application.routes.draw do
  resources :twonts  
  #root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "twonts#index"
end
