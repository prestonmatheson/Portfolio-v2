Rails.application.routes.draw do
  resources :blogs
  root to: 'pages#home'
end
