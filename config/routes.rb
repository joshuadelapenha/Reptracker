Rails.application.routes.draw do
  # resources :exercise_logs
  # resources :exercises
  # resources :lifters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/lifters", to: "lifters#index"
  get 


end
