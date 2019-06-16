Rails.application.routes.draw do
  resources :items, only: %i(index show create udpate destroy)
  resources :sessions, only: %i(create)
  resources :customers, only: %i(create)
end
