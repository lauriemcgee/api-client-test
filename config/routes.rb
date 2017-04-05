Rails.application.routes.draw do
  get "/characters/:id" => "characters#show"
end
