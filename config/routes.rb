Rails.application.routes.draw do
  get 'search', to:"search#index"
  resources :tags
  resources :stiteks

  resources :tasks
  resources :projects
  devise_for :users
  get 'tasks/:id/toggle_done', to: "tasks#toggle_done", as: 'toggle_done'
  get "pages/index"
  root "pages#index"
end
