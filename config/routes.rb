Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Locations
  resources :locations do
    resources :reviews, only: [:new, :create, :update]
  end

  # Reviews
  resources :reviews, except: [:new, :create]

  # Cities
  get "/cities", to: "pages#cities", as: :cities

  #My reviews and my locations
  get 'my_locations', to: 'locations#my_locations', as: :my_locations
  get 'my_reviews', to: 'reviews#my_reviews', as: :my_reviews
end
