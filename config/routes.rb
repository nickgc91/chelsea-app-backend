Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signIn', to: 'users#signIn'
  get '/users', to: 'users#index' 

end
