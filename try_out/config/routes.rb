Rails.application.routes.draw do
    root 'home#index'

    devise_for :users, controllers: { registrations: "registrations"}
    devise_for :grocers, skip: [:sessions, :registrations]
    devise_for :clients, skip: [:sessions, :registrations]

    resources :grocers
    resources :clients
    resources :items
    resources :orders
    resources :carts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
