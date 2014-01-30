CookBook::Application.routes.draw do
  resources :books, :recipes, :ingredients, :users, :sessions

  root to: 'books#index'

  get '/signup' => 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'

  get '/forgot' => 'users#forgot_password'
  post '/send_reset' => 'users#send_reset'
  get '/reset/:token' => 'users#reset_password'

end

