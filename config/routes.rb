Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :posts, except: [:edit, :update] do
    resources :comments, only: [:index, :new, :create]

  end
  resources :comments, only: [:show, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/demo_page", to: "pages#demo_page"
  # Defines the root path route ("/")

end
