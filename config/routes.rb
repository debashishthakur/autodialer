Rails.application.routes.draw do
    get "up" => "rails/health#show", as: :rails_health_check
  
    namespace :api do
      namespace :v1 do
        resources :calls, only: [:index, :create, :show] do
          member do
            post :start
          end
        end
  
        resources :blog_posts, only: [:index] do
          collection do
            post :batch_create
          end
        end
      end
    end
  
    namespace :webhooks do
      post 'twilio/status', to: 'webhooks#status_callback'
    end
  
    root "pages#home"
  end
  