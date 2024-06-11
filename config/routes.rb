Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
   root "pages#index"
   get "contact", to: "pages#contact"
   get "restaurants", to: "restaurants#index"
   get "restaurants/new", to: "restaurants#new"
   get "restaurants/:id/edit", to: "restaurants#edit", as: :edit
   get "restaurants/:id", to: "restaurants#show", as: :restaurant
   patch "restaurants/:id", to: "restaurants#update"
   post "restaurants", to: "restaurants#create"

   delete "restaurants/:id", to: "restaurants#destroy"
end
