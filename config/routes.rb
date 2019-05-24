Rails.application.routes.draw do
  resources :image_posts
  resources :obituaries
  resources :suggested_categories
  resources :email_subscriptions
  resources :search_histories
  devise_for :users
  resources :authors
  resources :articles
  resources :categories
  get 'welcome/index'
  get 'welcome/search'
  get 'welcome/weather'
  get 'welcome/map'
  get 'welcome/fashion'
  get 'welcome/travel'
  get 'welcome/subscribe'
  
  root 'welcome#index'
end
