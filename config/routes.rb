Rails.application.routes.draw do
  resources :sessions, only: %i(create)
  resources :customers, only: %i(create)
end
