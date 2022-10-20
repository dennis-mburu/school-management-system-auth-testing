Rails.application.routes.draw do
  resources :parents
  resources :students
  resources :teachers
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # ADMIN AUTH
  post "/admin_login", to: "admin_sessions#create"
  delete "/admin_logout", to: "admin_sessions#destroy"
  get "/admin_auth", to: "admins#show"
  post "/admin_signup", to: "admins#create"


  #TEACHER AUTH
  post "/teacher_login", to: "teacher_sessions#create"
  delete "/teacher_logout", to: "teacher_sessions#destroy"
  get "/teacher_auth", to: "teachers#show"
  post "/teacher_signup", to: "teachers#create"

end
