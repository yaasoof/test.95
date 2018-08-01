Rails.application.routes.draw do
  resources :books
  resources :users
  root "books#index"
  match ':controller(/:action(/:id))',:via=> [:get ,:post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
