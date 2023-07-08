Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Locations
  resources :locations do
    resources :reviews, only: [:new, :create, :update]
  end

  # Reviews
  resources :reviews, except: [:new, :create]
end
