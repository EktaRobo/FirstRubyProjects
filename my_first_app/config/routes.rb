Rails.application.routes.draw do
  get 'courses/index'

  get 'greeter/hello' # Two ways of using
  get 'greeter/goodbye' => "greeter#goodbye"

  root 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
