Rails.application.routes.draw do
  	devise_for :users, controllers: {registrations: "users/registrations"}
  	root to: "projects#show"
	resources :users
	resources :projects
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	# get "/", to: "users#index"
end
