Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :programs, only: [:index, :create, :new] do
    resources :circuits, only: [:index, :new] do 
      resources :exercises, only: :index 
    end 
  end 
  resources :circuits, only: :create
end
