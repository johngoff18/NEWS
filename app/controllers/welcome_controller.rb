class WelcomeController < ApplicationController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Welcome", :welcome_index_path
  
  
  def index
    @articles = Article.where("featured = 1").order('updated_at DESC').last(5)
  end

  def search
    
  end
  
  def map
    add_breadcrumb "Map", :welcome_index_path
  end
  
  def weather
    add_breadcrumb "Weather", :welcome_index_path
  end
  
  def fashion
    add_breadcrumb "Fashion", :welcome_fashion_path
  end
  
  def travel
    add_breadcrumb "Travel", :welcome_travel_path
  end

  def subscribe
    add_breadcrumb "Subscribe", :welcome_subscribe_path
    
  end
  
end
