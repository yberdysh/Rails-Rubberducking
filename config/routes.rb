Rails.application.routes.draw do
  resources :ducks
  resources :students, only: [:index, :show, :edit, :create, :new, :update]
end
