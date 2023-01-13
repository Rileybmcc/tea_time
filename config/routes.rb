Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      # resources :subscriptions, only: %i[new destroy]
      resources :customers, only: [:show] do
        resources :subscriptions, only: %i[create destroy]
      end
    end
  end


end
