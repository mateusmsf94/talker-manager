Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "talkers#index"

  resources :talkers do
    resources :talks
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
