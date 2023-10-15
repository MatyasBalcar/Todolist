Rails.application.routes.draw do
  get 'search', to:"search#index"
  resources :tags

  resources :tasks, only: [:edit, :update, :destroy]

  resources :tasks
  resources :projects
  match '/users',   to: 'users#index',   via: 'get'
  devise_for :users
  get 'tasks/:id/toggle_done', to: "tasks#toggle_done", as: 'toggle_done'
  get "pages/index"
  root "pages#index"
end
