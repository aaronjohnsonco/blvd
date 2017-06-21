Rails.application.routes.draw do
  get 'pages/home'
  get 'homes', to: 'pages#available'
  get 'detail', to: 'pages#detail'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
