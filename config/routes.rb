Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/api/v1/searches/search" => "api/v1/searches#search"
end
