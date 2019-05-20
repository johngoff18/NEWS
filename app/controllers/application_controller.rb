class ApplicationController < ActionController::Base
  before_action :load_categories
  before_action :init_search
  private
  def load_categories
    @categories = Category.all
    @authors = Author.all
  end
  def init_search
    @q = Article.ransack(params[:q])
    @article_result = @q.result(distinct: true)
  end
end
