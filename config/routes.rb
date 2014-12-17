Rails.application.routes.draw do
  
  root to: "home#index"
  resources :songs do 
    resources :comments 
  end
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:index, :show]

end
