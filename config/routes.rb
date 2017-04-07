Rails.application.routes.draw do
  get "/" => "characters#index"
  get "/characters" => "characters#index"
  get "/characters/new" => "characters#new"
  post "/characters" => "characters#create"
  get "/characters/:id" => "characters#show"
end
