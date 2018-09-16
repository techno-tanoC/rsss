Rails.application.routes.draw do
  resources :feeds, shallow: true do
    resources :items, only: %i(index show)
  end
end
