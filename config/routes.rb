Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  devise_for :admins

  get 'admin', to: 'admin/admins#index'
  namespace :admin do
    resources :works
    resources :groups
  end

  resources :groups
end
