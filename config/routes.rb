Rails.application.routes.draw do
  root to:"posts#index"
  resources :posts
  post "download/posts", to:"posts#download"
  get '/notice', to: 'posts#clear_message'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
