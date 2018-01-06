Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/api/v1/searches/search" => "api/v1/searches#search"
  post "/api/v1/searches/toSell" => "api/v1/searches#search_to_sell"
  post "/api/v1/transactions/buy_stocks" => "api/v1/transactions#buy_stocks"
  post "/api/v1/users/signup" => "api/v1/users#signup"
  post "/api/v1/users/set_capital" => "api/v1/users#set_capital"
  post "/api/v1/users/cash" => "api/v1/users#cash"
end
