Rails.application.routes.draw do
  authenticate :user, -> user { user.admin? } do
    mount Avo::Engine, at: Avo.configuration.root_path
  end
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
  get "/centre-de-ressources/editions", to: "resources#editions", as: "editions"
  get "/centre-de-ressources/editions/:id", to: "resources#edition", as: "edition"

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  namespace :secretariat do
    root to: "students#index"

    resources :students
    resources :subscriptions
    resources :teachers
    resources :instruments
    resources :instrument_classes
    resources :sessions
    resources :workshops
    resources :seasons
    resources :plans
    resources :cities

    resources :events
    resources :posts
    resources :categories
    resources :editions

  end
  
end
