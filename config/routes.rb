Rails.application.routes.draw do
  resources :reservations
  resources :movies

  root 'movies#index'
end
