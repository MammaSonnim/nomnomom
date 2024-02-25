Rails.application.routes.draw do
  root 'activities#index'

  resources :activities, except: [:index]
end
