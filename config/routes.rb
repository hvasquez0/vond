Rails.application.routes.draw do
  	devise_for :users, controllers: {registrations: "users/registrations"}
  	root to: "projects#index"
	resources :users, only: [:show]
	resources :projects do 
		resources :group_members
	end	
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	# get "/", to: "users#index"
end
