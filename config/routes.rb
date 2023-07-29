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
  get "/cities/:id", to: "pages#city_show", as: :city_show

  # Neighborhoods by city
  get "/neighborhoods/:city", to: "pages#neighborhoods", as: :neighborhoods
  get "/neighborhoods/:id", to: "pages#neighborhood_show", as: :neighborhood_show

  #My reviews and my locations
  get 'my_locations', to: 'locations#my_locations', as: :my_locations
  get 'my_reviews', to: 'reviews#my_reviews', as: :my_reviews

  # Custom 404 error page
  get '/404', to: 'application#render_404'
  # Custom 500 error page
  get '/500', to: 'application#render_500'

end
