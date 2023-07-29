Rails.application.routes.draw do
  resources :projects
  devise_for :users
  get "pages/index"
  root "pages#index"
end
