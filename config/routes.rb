Rails.application.routes.draw do
  resources :authors
  resources :articles
  resources :categories
  get 'welcome/index'
  get 'welcome/search'
  
  root 'welcome#index'
end
