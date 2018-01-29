Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "home#index"
  get "home/index"
  resources :users, only: %i(show create new) do
    resources :orders, only: %i(show)
  end
  resources :sessions, only: %i(create new destroy)

end
