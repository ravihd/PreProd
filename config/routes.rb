Rails.application.routes.draw do
    
    
    
    get "/users/details" => "users#details"
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
