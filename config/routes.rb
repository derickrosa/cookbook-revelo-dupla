Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update]
  resources :recipe_types, only: %i[new create show index]
  get '/search', to: 'recipes#search'
end
