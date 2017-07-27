Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> forkotis/rally_creation
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts
  get '/hot_rally_city', to: 'pages#city'
end
