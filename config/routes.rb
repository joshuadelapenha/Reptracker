Rails.application.routes.draw do
  # resources :exercise_logs
  # resources :exercises
  # resources :lifters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/lifters", to: "lifters#index"
  
  get "/exercises", to: "exercises#index"
  get "/exercises/:id", to: "exercises#show"
  get "/exerciselogs", to: "exerciselogs#index"
  get "/exerciselogs/:id", to: "exerciselogs#show"

  # resources :exerciselogs, only: [:index, :show, :new, :create]


end
