class ApplicationController < ActionController::Base
  before_action :load_categories
  before_action :init_search
  before_action :load_obituaries
  before_action :load_image_posts

  private
    def load_categories
      @categories = Category.all
      @authors = Author.all
    end
    def init_search
      @q = Article.ransack(params[:q])
      @article_result = @q.result(distinct: true)
    end
    def load_obituaries
        @obituaries = Obituary.last(5)
    end
    def load_image_posts
      @image_posts = ImagePost.last(9)
    end
end
