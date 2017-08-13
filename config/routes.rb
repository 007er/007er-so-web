Rails.application.routes.draw do
  devise_for :admins
  get 'admin', to: 'admin/admins#index'
  namespace :admin do
    resources :groups
  end
end
