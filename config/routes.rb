Rails.application.routes.draw do
	namespace :api, :defaults => { :format => :json } do
		namespace :v1 do
			get "/trains" => "trains#index", :as => :trais #查询火车
			get "/trains/:train_number" => "trains#show", :as => :train #查询车次

			get "/reservations/:booking_code" => "reservations#show", :as => :reservation #查询订票
			post "/reservations" => "reservations#create", :as => :create_reservations #新增订票
			patch "/reservations/:booking_code" => "reservations#update", :as => :update_reservation #修改订票
			delete "/reservations/:booking_code" => "reservations#destroy", :as => :cancel_reservation #删除订票
		end
	end

  	devise_for :users
	resources :posts do
		resources :comments
	end
	root "posts#index"

	resources :cities do
		member do
			post :update_temp
		end
	end

	get '/about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
