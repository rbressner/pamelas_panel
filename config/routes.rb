Rails.application.routes.draw do
  root 'pages#index'
  resources :teacher_cohorts
  resources :student_cohorts
  devise_for :students
  devise_for :teachers
  devise_for :admins

  get 'pages/index'
  get 'admins/index'
  get 'admins/show'
  resources :cohorts
  resources :courses
  resources :admins, only: [:index, :show, :edit]
  resources :teachers
  resources :students
end
