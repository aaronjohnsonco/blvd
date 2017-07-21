Rails.application.routes.draw do

  scope '/dashboard' do
    resources :homes, only: [:new, :create, :update, :edit, :destroy]
  end

  resources :images
  get 'dashboard/index'

  devise_for :users
  resources :homes
  resources :home_images



  resources :communities
  get 'dashboard', to: 'dashboard#index'
  get 'dashboard/new-home', to: 'dashboard#new_home'
  get 'dashboard/homes', to: 'dashboard#homes'
  get 'dashboard/communities', to: 'dashboard#communities'
  get 'dashboard/homes/:id', to: 'dashboard#detail', as: 'dashboard_home_detail'
  get 'pages/home'
  get 'home', to: 'pages#available'
  get 'detail', to: 'pages#detail'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'community', to: 'pages#communities'
  get 'our-warranty', to: 'pages#warranty'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
