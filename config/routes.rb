Rails.application.routes.draw do
  # static_pages
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  post 'static_pages/send_messege_to_slack'
  get 'static_pages/members'
  # sessions
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  # users
  resources :users
  # articles
  resources :articles, only: %i[new create destroy]
  get 'events/index'
  get 'events/:id', to: 'events#show', as: 'event'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
