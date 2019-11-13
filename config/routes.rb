Rails.application.routes.draw do
  # static_pages
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/members'
  # sessions
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  # users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
