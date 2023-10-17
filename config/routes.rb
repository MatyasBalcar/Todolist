Rails.application.routes.draw do
  get 'search', to:"search#index"
  resources :tags

  resources :tasks, only: [:edit, :update, :destroy]

  resources :tasks
  resources :projects
  devise_for :users
  resources :users, only: :index
  get 'users/profile'
  get 'tasks/:id/toggle_done', to: "tasks#toggle_done", as: 'toggle_done'
  get "pages/index"
  root "pages#index"
end
