Rails.application.routes.draw do
  root 'home#index'
  get '/dashBoard' => 'dash_board#main'
  match '/login' => 'home#login', via: :post
  get '/showAll' => 'dash_board#showAll'
  get '/profile' => 'dash_board#profile'
  post '/updateProfile' => 'dash_board#updateProfile'
  post '/signUp' => 'home#createAccount'
  get '/logout'  => 'home#logout'
  get '/company' => 'company#main'
  get '/memberDetail/:id' => 'dash_board#memberDetail'
  get '/retrieve' => 'retrieve_id#main'
  post '/retrieveId' => 'retrieve_id#retrieve'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
