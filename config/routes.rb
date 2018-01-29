Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "users#new"
  resources :users, only: %i(index create new) do
    resources :orders, only: %i(show)
  end
  resources :sessions, only: %i(create new destroy)

end
