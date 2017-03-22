Rails.application.routes.draw do
  resources :orders
  resources :expedients
  resources :bills
  resources :remissions
  resources :results
  resources :constancies
  resources :laboratories
  resources :phone_numbers
  resources :medic_patients
  resources :patients
  resources :medics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
