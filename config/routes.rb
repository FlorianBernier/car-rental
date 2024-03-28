Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :cars, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
end
