Rails.application.routes.draw do
  resources :campaigns
  resources :jobs
  resources :ads, only: :index
end
