Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home_page'
  get '/research', to: 'static_pages#research'

  resources :portfolios, only: [:show]
end
