Rails.application.routes.draw do
  root 'feeds#index'

  resources :feeds, shallow: true do
    patch :fetch
    resources :items, only: %i(index show) do
      put :check
      put :uncheck
    end
  end
end
