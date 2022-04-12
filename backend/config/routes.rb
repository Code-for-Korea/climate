Rails.application.routes.draw do
  namespace :admin do
      resources :tools
      resources :goals
      resources :documents
      resources :policies
      resources :stories
      resources :data_sources

      root to: "tools#index"
    end

    resources :tools
  resources :data_sources
  resources :goals
  resources :documents
  resources :policies
  resources :stories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
