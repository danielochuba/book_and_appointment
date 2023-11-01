Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/auth/login", to: "authentication#login"
      post "/auth/register", to: "authentication#register"

      resources :houses, only: [:create, :index, :destroy]
      resources :house_bookings, only: [:index], path: 'reservations'
    end
  end
end
