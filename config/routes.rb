Rails.application.routes.draw do
  resources :arts
  resources :paints
  resources :paintings
  resources :works
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
