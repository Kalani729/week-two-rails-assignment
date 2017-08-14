Rails.application.routes.draw do
  devise_for :admins
  
  get 'profile', to: 'pages#profile'
  get 'news', to: 'pages#news'
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
