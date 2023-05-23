Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "public#index"
  
  resources :posts
  resources :events

  get "/emt", to: "emt#index"
  namespace :emt do
    resources :workshops
    resources :teachers
    resources :instruments
  end

  get "/groupement", to: "groupement#index"
  get "/events", to: "events#index"
  get "/bogue", to: "events#bogue"
  get "/events/:id", to: "events#show"

  get "/centre-de-ressources", to: "resources#index", as: "resources"
  get "/centre-de-ressources/editions", to: "resources#editions", as: "resources_editions"

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  namespace :admin do
    root to: "posts#index"

    resources :posts
    resources :categories
    resources :events
    resources :teachers
    resources :instruments
    resources :instrument_classes
    resources :workshops
  end
end
