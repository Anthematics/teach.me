Rails.application.routes.draw do
  get 'modulesnew/create'

  get 'modulesnew/update'

  get 'modulesnew/edit'

  get 'modulesnew/destroy'

  get 'modulesnew/index'

  get 'modulesnew/show'

  get 'modules/new'

  get 'modules/create'

  get 'modules/update'

  get 'modules/edit'

  get 'modules/destroy'

  get 'modules/index'

  get 'modules/show'

  get 'languages/show'

  get 'languages/new'

  get 'languages/edit'

  get 'languages/create'

  get 'languages/update'

  get 'steps/show'

  get 'steps/new'

  get 'steps/create'

  get 'steps/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users

root 'users#index'

end
