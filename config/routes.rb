Rails.application.routes.draw do
  resources :offers
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people
  get 'people/remove/:id', to: 'people#destroy'
  post 'people/increase_points/:id', to: 'people#increase_points'
  post 'people/earn_badge/:id/:badge_id', to: 'people#earn_badge'

  # resources :offers
  get 'offers', to: 'offers#index'

  resources :badges
  get 'badges/remove/:id', to: 'badges#destroy'

  root 'welcome#index'
end