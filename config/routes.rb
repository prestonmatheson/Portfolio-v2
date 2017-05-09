Rails.application.routes.draw do
  resources :projects
  resources :images
  resources :albums
  root to: 'pages#home'
  resources :blogs
end
