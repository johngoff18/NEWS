Rails.application.routes.draw do
  resources :categories
  get 'welcome/index'
  get 'welcome/search'
  
  root 'welcome#index'
end
