Rails.application.routes.draw do
  root 'home#index'
  get '/dashBoard' => 'dash_board#memberList'
  match '/login' => 'home#login', via: :post
  get '/showAll' => 'dash_board#showAll'
  get '/profile' => 'dash_board#profile'
  post '/updateProfile' => 'dash_board#updateProfile'
  post '/signUp' => 'home#createAccount'
  get '/logout'  => 'home#logout'
  get '/memberDetail/:id' => 'dash_board#memberDetail'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
