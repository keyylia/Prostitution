Rails.application.routes.draw do
  resources :arts
  resources :paints
  resources :paintings
  resources :works
  root to: 'arts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
