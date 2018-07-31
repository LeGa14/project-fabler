Rails.application.routes.draw do

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        get 'existents/index'
        get 'existents/show'
        post 'existents/create'
        patch 'existents/update'
        delete 'existents/destroy'
      end
    end
  end

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        get 'events/index'
        get 'events/show'
        post 'events/create'
        patch 'events/update'
        delete 'events/destroy'
      end
    end
  end

  namespace :api do
    namespace :stories do
      get 'scenarios/index'
      get 'scenarios/show'
      post 'scenarios/create'
      patch 'scenarios/update'
      delete 'scenarios/destroy'
    end
  end

  namespace :api do
    get 'stories/index'
    get 'stories/show'
    post 'stories/create'
    patch 'stories/update'
    delete 'stories/destroy'
  end
  

  namespace :api do
    resources :stories do
      resources :scenarios do
        resources :existents
      end
    end
  end

  namespace :api do
    resources :stories do
      resources :scenarios do
        resources :events
      end
    end
  end

end
