Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :users do
    resource :profile
  end
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: :create
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
  resources :newrallies, except: :index
  get 'newrallies-city', to: 'newrallies#city', as: 'city'
  get 'newrallies-country', to: 'newrallies#country', as: 'country'

end
