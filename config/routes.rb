Rails.application.routes.draw do
  devise_for :users
  resources :animes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :animals
  resources :articles do
    resources :comments
  end
end
