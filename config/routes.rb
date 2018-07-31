Rails.application.routes.draw do

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        namespace :settings do
          get 'props/index'
          get 'props/show'
          get 'props/create'
          get 'props/update'
          get 'props/destroy'
        end
      end 
    end
  end

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        namespace :characters do
          get 'props/index'
          get 'props/show'
          get 'props/create'
          get 'props/update'
          get 'props/destroy'
        end
      end 
    end
  end

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        get 'characters/index'
        get 'characters/show'
        get 'characters/create'
        get 'characters/update'
        get 'characters/destroy'
      end 
    end
  end

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        get 'settings/index'
        get 'settings/show'
        get 'settings/create'
        get 'settings/update'
        get 'settings/destroy'
      end 
    end
  end

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        get 'events/index'
        get 'events/show'
        get 'events/create'
        get 'events/update'
        get 'events/destroy'
      end 
    end
  end

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        get 'happenings/index'
        get 'happenings/show'
        get 'happenings/create'
        get 'happenings/update'
        get 'happenings/destroy'
      end 
    end
  end

  namespace :api do
    namespace :stories do
      namespace :scenarios do
        get 'existents/index'
        get 'existents/show'
        get 'existents/create'
        get 'existents/update'
        get 'existents/destroy'
      end 
    end
  end

  namespace :api do
    namespace :stories do
      get 'scenarios/index'
      get 'scenarios/show'
      get 'scenarios/create'
      get 'scenarios/update'
      get 'scenarios/destroy'
    end
  end

  namespace :api do
      get 'stories/index'
      get 'stories/show'
      get 'stories/create'
      get 'stories/update'
      get 'stories/destroy'
  end

  namespace :api do
    resources :stories do
      resources :scenarios do
        resources :existents
        resources :settings do
          resources :props
        end
        resources :characters do
          resources :props
        end
        resources :events
        resources :happenings
        
      end
    end
  end

end
