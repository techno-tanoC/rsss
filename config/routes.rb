Rails.application.routes.draw do
  resources :feeds, shallow: true do
    patch 'fetch'
    resources :items, only: %i(index show)
  end
end
