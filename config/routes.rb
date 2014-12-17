Rails.application.routes.draw do
  
  root to: "home#index"
  resources :songs
  resources :comments
  resources :users, only: [:index]
  devise_for :users, :controllers => { registrations: 'registrations' }

end
