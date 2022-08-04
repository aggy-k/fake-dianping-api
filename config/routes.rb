Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do

      resources :restaurants do
        resources :reviews, only: [:index, :create]
      end

      resources :reviews, only: [:show, :update, :destroy]
    end
  end
end
