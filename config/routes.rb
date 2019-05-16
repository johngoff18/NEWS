Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/search'
  
  root 'welcome#index'
end
