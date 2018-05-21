Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  resources :students
  resources :teachers
  resources :cohorts
  resources :courses
  root to: 'home#index'
  get '/courses', to: 'courses#index'
  get '/students', to: 'students#index'
  get '/cohorts', to: 'cohorts#index'
  get '/teachers', to: 'teachers#index'
end
