Rails.application.routes.draw do
  devise_for :users
	resources :events, :tickets
	
	root "events#index"
end
