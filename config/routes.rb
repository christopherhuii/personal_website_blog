Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  resrouces :projects

  root "pages#home"

  get '/about', to: "pages#about"
  get '/contact', to: "pages#contact"
  get '/home', to: "pages#home"
end
