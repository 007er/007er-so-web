Rails.application.routes.draw do
  devise_for :users
  devise_for :admins



  namespace :admin do
    resources :categories do
      resources :works
    end
    resources :users do
      resource :profile, :controller => "user_profiles"
    end
    resources :groups
  end

  resources :categories do
    resources :works
  end
  resource :user

  root "welcome#index"
end
