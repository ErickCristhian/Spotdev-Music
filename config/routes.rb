Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root "home#index"


  namespace :api, defaults: { format: :json} do
    namespace :v1 do  
        resources :dashboard, only: :index
        resources :categories, only: [:index, :show]
        resources :search, only: :index
        resources :albums, only: :show do
          resources :recently_heards, only: :create
        end
        resources :favorites, only: :index
    end 
  end
  1
get "*path", to: "home#index", :constraints => lambda{|req| req.path !~ /\.(png|jpg|js|css|json|mp3)$/ }
end