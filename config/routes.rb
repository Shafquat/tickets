Rails.application.routes.draw do
	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
	devise_for :users
		resources :events, :tickets, :venues
	
	resources :users, :only => [:show]
	get 'users/:id' => 'users#show'
	
	resources :venues do
		resources :events
	end
	
	root "events#index"
end
