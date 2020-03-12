Rails.application.routes.draw do
  get 'page/index'
  root 'page#index'

  get '/proyects', to: 'proyects#index'
  get '/proyects/new', to: 'proyects#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
