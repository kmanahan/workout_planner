Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :programs, only: [:index, :create, :new, :show] do
    resources :circuits, only: [:index, :new, :show] do 
      resources :exercises, only: [:index, :new] 
    end 
  end 
  resources :circuits, only: :create
end