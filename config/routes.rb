Rails.application.routes.draw do
  resources :unpublished_obituaries
  resources :unpublished_image_posts
  resources :unpublished_articles
  resources :user_logs
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
