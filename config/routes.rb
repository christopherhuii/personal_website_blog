Rails.application.routes.draw do
  resources :project_attachments

  devise_for :users
  resources :posts do
    resources :comments
  end
  resources :projects

  root "pages#home"

  get '/about', to: "pages#about"
  get '/contact', to: "pages#contact"
  get '/home', to: "pages#home"
end
