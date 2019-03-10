Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :persons

  delete 'remove', to: 'persons#destroy'

  root 'welcome#index'
end
