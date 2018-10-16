Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'
  get 'pages/help'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'items/outer_index'
  get 'items/tops_index'
  get 'items/botoms_index'
  get 'items/shoes_index'
  get 'items/a_index'
  get 'items/b_index'
  get 'items/c_index'
  get 'items/d_index'
  get 'items/e_index'

  resources :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
