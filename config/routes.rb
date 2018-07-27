Rails.application.routes.draw do
  namespace :api do
    resources :characters do
      resources :props
    end
    resources :settings do
      resources :props
    end
    resources :actions
  end
end
