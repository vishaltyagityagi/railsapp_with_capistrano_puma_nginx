Rails.application.routes.draw do
	    root :to => 'apprenticeships#index'
  resources :apprenticeships
  resources :padawans
  resources :jedis
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
