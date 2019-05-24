class WelcomeController < ApplicationController
  add_breadcrumb "Home", :root_path
  add_breadcrumb "Welcome", :welcome_index_path
  before_action :load_articles
  
  def index
  end

  def search
    add_breadcrumb "Search", :welcome_search_path
  end
  
  def map
    add_breadcrumb "Map", :welcome_map_path
  end
  
  def weather
    add_breadcrumb "Weather", :welcome_weather_path
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
  
  private
    def load_articles
      @articles = Article.where("featured = 1").order('updated_at DESC').last(6)
    end

end
