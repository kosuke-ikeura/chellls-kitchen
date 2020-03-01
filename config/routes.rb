Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  resources :flavors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end