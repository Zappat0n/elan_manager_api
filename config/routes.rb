Rails.application.routes.draw do
  resources :static_pages, only: [:index]
  root 'static_pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
