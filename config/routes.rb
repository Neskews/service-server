Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people
  get 'people/remove/:id', to: 'people#destroy'
  post 'people/increase_points/:id', to: 'people#increase_points'

  resources :offers

  root 'welcome#index'
end
