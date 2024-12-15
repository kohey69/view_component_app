Rails.application.routes.draw do
  root "blog_posts#index"

  resources :blog_posts, path: "blog", param: :name, only: [:show, :new, :create, :edit, :update, :destroy]
end
