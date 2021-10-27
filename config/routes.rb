Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :likes
  end
  get "/dislike/:post_id/:like_id", to: "likes#dislike"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
