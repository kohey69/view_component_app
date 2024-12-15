Rails.application.routes.draw do
  root "home#index"

  resources :blog_posts, path: "blog", param: :name
end
