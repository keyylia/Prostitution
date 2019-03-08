Rails.application.routes.draw do
  resources :images
  resources :movs
  resources :arts
  root to: 'movs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
