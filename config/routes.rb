Rails.application.routes.draw do
  root to: "search#index"

  get "/search" => "search#index"

  get "/movie" => "search#show"
end
