Rails.application.routes.draw do

<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

=======
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

get '/callback' => 'sessions#callback'
get '/oauth' => 'sessions#oauth'

>>>>>>> 2e8554a768d2db64e5ef59a85bf6b05dc6896e4a
resource :user

resources :languages

resources :chapters

resources :steps

resources :welcome, only: [:index]

resources :sessions, only: [:new, :create, :destroy]

resources :menu, only: [:index, :show]
<<<<<<< HEAD
=======


>>>>>>> 2e8554a768d2db64e5ef59a85bf6b05dc6896e4a
end
