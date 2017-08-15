Rails.application.routes.draw do
  root "groups#index"
  devise_for :admins

  get 'admin', to: 'admin/admins#index'
  namespace :admin do
    resources :groups
  end

  resources :groups
end
