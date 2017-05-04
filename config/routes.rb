Rails.application.routes.draw do
  resources :images
  resources :albums
  root to: 'pages#home'
  resources :blogs
end
