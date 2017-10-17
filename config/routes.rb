Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'

resource :user
resources :menu, only: [:index, :show]
resources :welcome, only: [:index]
resources :sessions, only: [:new, :create, :destroy]

resources :languages,only: [:index, :show] do
  resources :chapters,only: [:index, :show]  do
    resources :steps, only: [:index, :show]
  end
end

end
