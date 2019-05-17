class WelcomeController < ApplicationController
  def index
    @articles = Article.order('updated_at DESC').last(5)
  end

  def search
  end
  
  def map
  end
  
  def weather
  end
  
end
