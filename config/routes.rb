Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  get 'admin', to: 'admins#index'

  namespace :admin do
    resources :categories do
      resources :works
    end
    resources :users
    resources :groups
  end

  resources :categories do
    resources :works
  end
  resource :user

  root "categories#index"
end
