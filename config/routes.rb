Rails.application.routes.draw do
  get '/', to: 'dogs#index'

    # auth routes
    get  '/signup',  to: 'dogs#new', as: 'signup'
    post '/signup',  to: 'dogs#create'
    get    '/login',   to: 'sessions#new', as: 'login'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy', as: 'logout'

    # pages routes
    get '/home', to: 'pages#home'
    get '/about', to: 'pages#about'
    get '/team', to: 'pages#team'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
