Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  get 'admins/index'
  get 'admins/show'
  resources :cohorts
  resources :courses
  resources :admins, only: [:index, :show, :edit]
  resources :teachers
  resources :students
end
