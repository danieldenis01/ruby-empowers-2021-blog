Rails.application.routes.draw do
  resources :categories
  resources :authors
  resources :posts

  root 'posts#index'
end
