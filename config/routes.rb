Rails.application.routes.draw do

  # props routes thru settings
  namespace :api do
    namespace :settings do
      get 'props/index'
      get 'props/show'
      post 'props/create'
      patch 'props/update'
      delete 'props/destroy'
    end
  end
# props routes thru chars
  namespace :api do
    namespace :characters do
      get 'props/index'
      get 'props/show'
      post 'props/create'
      patch 'props/update'
      delete 'props/destroy'
    end
  end

  namespace :api do
    get 'settings/index'
    get 'settings/show'
    post 'settings/create'
    patch 'settings/update'
    delete 'settings/destroy'
  end

  namespace :api do
    get 'characters/index'
    get 'characters/show'
    post 'characters/create'
    patch 'characters/update'
    delete 'characters/destroy'
  end

  namespace :api do
    get 'actions/index'
    get 'actions/show'
    post 'actions/create'
    patch 'actions/update'
    delete 'actions/destroy'
  end
  
  namespace :api do
    resources :characters do
      resources :props
    end
  end

  namespace :api do
    resources :settings do
      resources :props
    end
  end

end
