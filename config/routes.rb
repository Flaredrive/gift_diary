Rails.application.routes.draw do
  
  scope module: :public do
    root to: "homes#top"
    get "about", to: "homes#about"
    resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
    resource :"session", only: [:new, :create, :destroy]
    resources :posts do
      resources :"comments", only: [:create, :edit, :update, :destroy]
      resource :"post_like", only: [:create, :destroy]
    end
    get "search", to: "posts#search"
    resources :comments, only: [] do
      resource :"comment_like", only: [:create, :destroy]
    end
    resources :passwords, param: :token
  end

  namespace :admin do
    root to: "homes#top"
    resources :users, only: [:index, :show, :edit, :update]
    resource :"sessions", only: [:new, :create, :destroy]
    resources :gendar_tags, only: [:new, :create, :index, :edit, :update, :destroy]
    resources :relationship_tags, only: [:new, :create, :index, :edit, :update, :destroy]
    resources :category_tags, only: [:new, :create, :index, :edit, :update, :destroy]
    resources :posts, only: [:show, :edit, :update, :destroy]
    resource :"sessions", only: [:new, :create, :destroy]
  end
  
  get "up" => "rails/health#show", as: :rails_health_check
end