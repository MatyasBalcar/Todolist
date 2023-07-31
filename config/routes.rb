Rails.application.routes.draw do
  resources :tasks
  resources :projects
  devise_for :users
  get "pages/index"
  root "pages#index"
end
