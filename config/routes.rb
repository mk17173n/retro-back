Rails.application.routes.draw do
  resources :contents
  resources :likes
   # This is the route to register a user
   resources :users, only: [:create]


   # This is the route to log in a user
 
   post "/login", to: "users#login"
 
   # This is the route to persist a user
 
   get "/persist", to: "users#persist"

   # This is the route to create a like

   post "/contents/:id/likes", to: "likes#create"

   # This is the route to delete a like

   delete "/contents/likes/:id", to: "likes#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
