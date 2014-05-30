Final::Application.routes.draw do

get "/" => "region#index"
 # --- Create
get "/region/new" => 'region#new'
post "/region" => 'region#create'
get "/region/:id" => "region#show"
get "/region" => "region#index"
get "/region/show" => "region#show"

 # Resource: Region



  # --- Read
  get "/region" => 'region#index'
  get "/region/:id" => 'region#show'

  # -- Update
  get "/region/:id/edit" => 'region#edit'
  patch "/region/:id" => 'region#update'

  # --- Delete
  delete "/region/:id" => 'region#destroy'

get "/country" => "country#index"
get "/country/show" => "country#show"
get "/country/:id" => "country#show"

get "/trip" => "trip#index"
get "/trip/show" => "trip#show"
get "/trip/:id" => "trip#show"

get "/itinerary" => "itinerary#index"
get "/itinerary/show" => "itinerary#show"
get "itinerary/:id" => "itinerary#show"

get "/contact" => "contact#index"

 # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

# Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'

end
