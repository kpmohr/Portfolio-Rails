Rails.application.routes.draw do
  get 'portfolios/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "homes#index"

  get "/home", to: "homes#index"
  get "/resume", to: "homes#show", as: :resume # resume_path

  get "/portfolio", to: "portfolios#index", as: :portfolios # portfolios_path

  get "portfolios", to: "portfolios#all", as: :portfolios_all # all_portfolios_path
  get "portfolios/new", to: "portfolios#new", as: :new_portfolio # new_portfolio_path
  get "/portfolios/:id", to: "portfolios#show", as: :portfolio # portfolio_path
  get "/portfolios/:id/edit", to: "portfolios#edit", as: :edit_portfolio # edit_portfolio_path
  post "/portfolio", to: "portfolios#create"
  patch "/portfolios/:id", to: "portfolios#update"
  delete "/portfolios/:id", to: "portfolios#destroy"

  get "/contact", to: "contacts#index", as: :contacts # contacts_path
  get "/contact/kait", to: "contacts#show" # contacts_show_path
  post "/contact", to: "contacts#create"

end
