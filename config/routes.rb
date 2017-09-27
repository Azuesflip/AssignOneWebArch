Rails.application.routes.draw do
  	devise_for :users
	root "sections#index"
	resources :sections do
			collection do
	      get 'search'
	    end
	end
	resources :courses
	resources :professors
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
