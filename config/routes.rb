Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  get '/register',to: 'users#new'
  post '/users', to: 'users#create'

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
  get '/logout', to: 'login#destroy'


  get '/userMenu', to: 'menu#userMenu'
  get '/adminMenu', to: 'menu#adminMenu'
  # post '/order', to:'menu#create'
  get '/orders', to:'orders#new'
  post '/orders', to:'orders#create'
  get '/orders/hist',to:'orders#show'
  post '/orders/hist',to:'orders#change'
  get '/orders/report', to:'orders#report'
end
