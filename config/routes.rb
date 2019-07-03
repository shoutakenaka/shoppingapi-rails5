Rails.application.routes.draw do
  resource :cart, only: %i(show update)
  resources :browsing_histories, only: %i(index)
  resources :categories, only: %i(index)
  resources :customers, only: %i(create)
  resources :items, only: %i(index show create udpate destroy) do
    resource :image, only: %i(show), module: 'items'
  end
  resources :orders, only: %i(index show create update)
  resources :sessions, only: %i(create)
end
