Rails.application.routes.draw do
  resources :songs

  resources :comments

  root to: "home#index"
  devise_for :users, :controllers => { registrations: 'registrations' }

end
