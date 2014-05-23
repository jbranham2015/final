Final::Application.routes.draw do

get "/" => "region#index"
get "/region/:id" => "region#show"
get "/region" => "region#index"
get "/region/show" => "region#show"

get "/country" => "country#index"
get "/country/show" => "country#show"

get "/trip" => "trip#index"
get "/trip/show" => "trip#show"

get "/itinerary" => "itinerary#index"
get "/itinerary/show" => "itinerary#show"

get "/contact" => "contact#index"


end
