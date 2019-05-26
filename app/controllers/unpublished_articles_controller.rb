class UnpublishedArticlesController < ApplicationController
  before_action :set_unpublished_article, only: [:show, :edit, :update, :destroy]
layout 'layouts/admin'

  # GET /unpublished_articles
  # GET /unpublished_articles.json
  def index
    @unpublished_articles = UnpublishedArticle.all
  end

  # GET /unpublished_articles/1
  # GET /unpublished_articles/1.json
  def show
  end

  # GET /unpublished_articles/new
  def new
    @unpublished_article = UnpublishedArticle.new
  end

  # GET /unpublished_articles/1/edit
  def edit
  end

  # POST /unpublished_articles
  # POST /unpublished_articles.json
  def create
    @unpublished_article = UnpublishedArticle.new(unpublished_article_params)

    respond_to do |format|
      if @unpublished_article.save
        format.html { redirect_to @unpublished_article, notice: 'Unpublished article was successfully created.' }
        format.json { render :show, status: :created, location: @unpublished_article }
      else
        format.html { render :new }
        format.json { render json: @unpublished_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unpublished_articles/1
  # PATCH/PUT /unpublished_articles/1.json
  def update
    respond_to do |format|
      if @unpublished_article.update(unpublished_article_params)
        format.html { redirect_to @unpublished_article, notice: 'Unpublished article was successfully updated.' }
        format.json { render :show, status: :ok, location: @unpublished_article }
      else
        format.html { render :edit }
        format.json { render json: @unpublished_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unpublished_articles/1
  # DELETE /unpublished_articles/1.json
  def destroy
    @unpublished_article.destroy
    respond_to do |format|
      format.html { redirect_to unpublished_articles_url, notice: 'Unpublished article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpublished_article
      @unpublished_article = UnpublishedArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpublished_article_params
      params.require(:unpublished_article).permit(:title, :content, :status, :comments)
    end
end
