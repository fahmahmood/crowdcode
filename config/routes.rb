Rails.application.routes.draw do



  root to: 'projects#index'

  devise_for :users
  resources :users

  resources :projects, shallow: true do
		resources :features do
			resources :requests
		end
	end



end
