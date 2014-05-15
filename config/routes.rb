Final::Application.routes.draw do

get "/" => "region#index"

get "/country" => "country#index"

get "/trip" => "trip#index"
get "/trip/show" => "trip#show"

get "/itinerary" => "itinerary#index"

get "/contact" => "contact#index"


end
