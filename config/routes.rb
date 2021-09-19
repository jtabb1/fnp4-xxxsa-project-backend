Rails.application.routes.draw do
  resources :trainings, only: :create
  # resources :tasks, only: [:index, :destroy]
  resources :tasks, only: [:index, :show, :create, :destroy]
  resources :employees, only: [:index, :show, :create, :destroy]
end
