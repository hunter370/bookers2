Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  
  root to: "homes#top"
  resources :books, only: [:new, :create, :index, :show, :destroy]
  get 'home/about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
