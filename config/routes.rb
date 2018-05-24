Rails.application.routes.draw do
  root 'pages#index'
  devise_for :students
  devise_for :teachers
  devise_for :admins


  get 'pages/index'
  get 'admins/index'
  get 'admins/show'


  get '/cohorts/add_student' => 'cohorts#add_to_cohort'
  resources :cohorts do
  get '/students', to: 'cohorts#cohort_students_list', as: "cohort_students_list"
  get "/add_student/:student_id", to: "cohorts#add_student", as: "add_student"
  delete "/students/:student_id", to: "cohorts#destroy_student", as: "destroy_student"
  get "/teachers/:teacher_id", to: "cohorts#add_teacher", as: "add_teacher"
  delete "/teachers/:teacher_id", to: "cohorts#destroy_teacher", as: "destroy_teacher"
  end
  resources :courses
  resources :admins, only: [:index, :show, :edit]
  resources :teachers
  resources :students

end
