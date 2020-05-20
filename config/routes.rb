Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "departments#index"

  resources :departments do
    resources :store_items
  end

  resources :store_items do
    resources :comments
  end
end
