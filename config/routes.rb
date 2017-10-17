Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_view#index"

  #endpoints
  namespace :api do
    namespace :v1 do
      resources :skills, only: [:index, :create, :show]
    end
  end
end
