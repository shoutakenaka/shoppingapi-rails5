Rails.application.routes.draw do
  resource :cart, only: %i(show update)
  resources :customers, only: %i(create)
  resources :items, only: %i(index show create udpate destroy) do
    resource :image, only: %i(show), module: 'items'
  end
  resources :orders, only: %i(idnex show create update)
  resources :sessions, only: %i(create)
end
