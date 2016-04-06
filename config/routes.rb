Rails.application.routes.draw do
  resources :shop_lists do
    resources :shop_items
  end

  root "shop_lists#index"
end
