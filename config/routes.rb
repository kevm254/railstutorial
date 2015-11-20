Rails.application.routes.draw do
  root 'static_pages#home'

  get 'password_resets/new'

  get 'password_resets/edit'


  # navigate to main site areas
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  # signup
  get 'signup' => 'users#new'

  # login sessions
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # users
  resources :users
  resources :account_activations, only: [:edit]

  resources :password_resets, only: [:new, :create, :edit, :update]
end
