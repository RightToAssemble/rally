Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
=======
=======
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 760bb130baf2ebcc29ca194ee78988bb27149abd
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts
  get '/hot_rally_city', to: 'pages#city'
end
