Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

get '/callback' => 'sessions#callback'
get '/oauth' => 'sessions#oauth'
get '/user/:id/step/:step_id/submitcode' => 'users#submitCode', as: 'submitcode' 
# get '/languages/ruby' => 'languages#ruby'

resource :user
resources :welcome, only: [:index]
resources :menu, only: [:index, :show]
resources :sessions, only: [:new, :create, :destroy]

resources :languages, only: [:index, :show], param: :language_id do
  resources :chapters, only: [:index, :show]  do
    resources :steps, only: [:index, :show]
  end
end








end
