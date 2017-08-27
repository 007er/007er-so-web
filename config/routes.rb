Rails.application.routes.draw do
  devise_for :users
  root "works#index"
  devise_for :admins

  get 'admin', to: 'admins#index'
  namespace :admin do
    resources :works
    resources :categories
    resources :users
    resources :groups
  end
  resource :user
  resources :works
end
