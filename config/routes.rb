Rails.application.routes.draw do
  root "main#index"

  get '/cities/view/', to: 'cities#index'

  get '/cities/view/', to: 'cities#show'

  get '/cities/new', to: 'cities#new'

  get '/cities/create', to: 'cities#create'

  post '/cities/create', to: 'cities#create'

  get '/cities/update', to: 'cities#updateform'

  post '/cities/update', to: 'cities#updateform'

  get '/cities/edit', to: 'cities#update'

end