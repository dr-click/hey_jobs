Rails.application.routes.draw do
  resources :campaigns do
    collection do
      get :compare
    end
  end
  resources :jobs
  resources :ads, only: :index
  root :to => "pages#home"
end
