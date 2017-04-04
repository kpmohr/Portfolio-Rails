Rails.application.routes.draw do
  get 'portfolios/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homes#index"

  get "/home", to: "homes#index"
  get "/resume", to: "homes#show", as: :resume # resume_path

  get "/portfolio", to: "portfolios#index", as: :portfolio # portfolio_path

  get "/contact", to: "contacts#index", as: :contacts # contacts_path
  get "/contact/kait", to: "contacts#show" # contacts_show_path
  post "/contact", to: "contacts#create"

end
