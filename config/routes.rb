Rails.application.routes.draw do
  devise_for :users
  resources :authors
  resources :articles
  resources :categories
  get 'welcome/index'
  get 'welcome/search'
  get 'welcome/weather'
  get 'welcome/map'
  
  root 'welcome#index'
end
