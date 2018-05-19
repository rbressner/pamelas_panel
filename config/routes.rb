Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/index'
  resources :cohorts
  resources :courses
  resources :admins
  resources :teachers
  resources :students
end
