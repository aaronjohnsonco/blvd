Rails.application.routes.draw do
  get 'dashboard/index'

  devise_for :users
  resources :homes
  resources :communities
  get 'dashboard', to: 'dashboard#index'
  get 'dashboard/new-home', to: 'dashboard#new_home'
  get 'pages/home'
  get 'home', to: 'pages#available'
  get 'detail', to: 'pages#detail'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'communities', to: 'pages#communities'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
