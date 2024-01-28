Rails.application.routes.draw do
  root 'activities#index'

  resources :activities, only: [:new, :create, :show]
end
