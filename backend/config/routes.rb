Rails.application.routes.draw do
  namespace :admin do
    resources :goals
    resources :tools
    resources :data_sources
    resources :policies
    resources :stories
    resources :documents

    root to: "goals#index"
  end

  resources :tools
  resources :data_sources
  resources :goals
  resources :documents
  resources :policies
  resources :stories
end
