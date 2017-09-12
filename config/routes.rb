Rails.application.routes.draw do
  root 'portfolios#index'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'


  get 'blogs/mining', to: 'blogs#mining'
  get 'blogs/technology', to: 'blogs#technology'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  resources :blogs do
    member do
      post :toggle_status
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
