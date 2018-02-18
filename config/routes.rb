Rails.application.routes.draw do
 
  devise_for :users
  get '/test', to: proc { |el| [200, {},["ok"]]}
  get '/contact', to: "static_pages#contact"
  get '/about', to: "static_pages#about_us"
  get '/mission', to: "static_pages#mission"
  get '/help', to: "static_pages#help_me"
  root to: "users#index" 

  resources :orders
  resources :users
end