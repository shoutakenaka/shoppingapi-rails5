Rails.application.routes.draw do
  resources :customers, only: %i(create)
  resources :items, only: %i(index show create udpate destroy)
  resources :orders, only: %i(idnex show create update)
  resources :sessions, only: %i(create)
end
