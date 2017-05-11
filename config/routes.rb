Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :projects do
    put :sort, on: :collection
  end
  resources :images
  resources :albums
  resources :blogs
  get 'projects/:id', to: 'projects#show', as: 'project_show'
  root to: 'pages#home'
end
