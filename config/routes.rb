Rails.application.routes.draw do
  resources :ducks, only: [:index, :show, :create, :update, :new, :edit]
  resources :students, only: [:index, :show, :edit, :create, :new, :update]
end
