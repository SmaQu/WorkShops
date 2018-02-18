Rails.application.routes.draw do
 
  get '/test', to: proc { |el| [200, {},["ok"]]}
  get '/users', to: "users#index"
  get '/contact', to: "static_pages#contact"
  get '/about', to: "static_pages#about_us"
  get '/mission', to: "static_pages#mission"
  get '/help', to: "static_pages#help_me"

  resources :orders
end