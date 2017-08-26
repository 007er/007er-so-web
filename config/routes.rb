Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  devise_for :admins

  get 'admin', to: 'admins#index'
  namespace :admin do
    resources :works
    resources :categories
    resources :users
    resources :groups
  end

  resources :groups
end
