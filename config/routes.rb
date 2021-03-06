Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
        scope module: "items" do
          resources :items, only: [:index, :show, :destroy, :create]
        end
    end
  end

  get "/search", to: "search#index"
  get "/search/:id", to: "search#show", as: :store
end
