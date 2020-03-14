Rails.application.routes.draw do
  resources :foods
  root to: "foods#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
