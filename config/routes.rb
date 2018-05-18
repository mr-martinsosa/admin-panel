Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :cohorts
  resources :courses
  root 'home#index'
  get '/courses', to: 'courses#index'
  get '/students', to: 'students#index'
  get '/cohorts', to: 'cohorts#index'
  get '/teachers', to: 'teachers#index'
end
