Rails.application.routes.draw do
  resources :projects
  resources :images
  resources :albums
  root to: 'pages#home'
  resources :blogs
  get 'projects/:id', to: 'projects#show', as: 'project_show'
end
