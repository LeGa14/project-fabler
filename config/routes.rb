Rails.application.routes.draw do
  namespace :api do
    get 'props/index'
    get 'props/show'
  end
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
