Rails.application.routes.draw do
  resources :treatments
  resources :tooth_statuses
  resources :tooths
  resources :odontograms
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
