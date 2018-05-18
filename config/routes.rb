Rails.application.routes.draw do
  root 'home#index'
  get '/courses', to: 'courses#index'
  get '/students', to: 'students#index'
  get '/cohorts', to: 'cohorts#index'
  get '/teachers', to: 'teachers#index'
end
