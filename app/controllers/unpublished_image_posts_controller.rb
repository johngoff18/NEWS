class UnpublishedImagePostsController < ApplicationController
  before_action :set_unpublished_image_post, only: [:show, :edit, :update, :destroy]
  layout 'layouts/admin'

  # GET /unpublished_image_posts
  # GET /unpublished_image_posts.json
  def index
    @unpublished_image_posts = UnpublishedImagePost.all
  end

  # GET /unpublished_image_posts/1
  # GET /unpublished_image_posts/1.json
  def show
  end

  # GET /unpublished_image_posts/new
  def new
    @unpublished_image_post = UnpublishedImagePost.new
  end

  # GET /unpublished_image_posts/1/edit
  def edit
  end

  # POST /unpublished_image_posts
  # POST /unpublished_image_posts.json
  def create
    @unpublished_image_post = UnpublishedImagePost.new(unpublished_image_post_params)

    respond_to do |format|
      if @unpublished_image_post.save
        format.html { redirect_to @unpublished_image_post, notice: 'Unpublished image post was successfully created.' }
        format.json { render :show, status: :created, location: @unpublished_image_post }
      else
        format.html { render :new }
        format.json { render json: @unpublished_image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unpublished_image_posts/1
  # PATCH/PUT /unpublished_image_posts/1.json
  def update
    respond_to do |format|
      if @unpublished_image_post.update(unpublished_image_post_params)
        format.html { redirect_to @unpublished_image_post, notice: 'Unpublished image post was successfully updated.' }
        format.json { render :show, status: :ok, location: @unpublished_image_post }
      else
        format.html { render :edit }
        format.json { render json: @unpublished_image_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unpublished_image_posts/1
  # DELETE /unpublished_image_posts/1.json
  def destroy
    @unpublished_image_post.destroy
    respond_to do |format|
      format.html { redirect_to unpublished_image_posts_url, notice: 'Unpublished image post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpublished_image_post
      @unpublished_image_post = UnpublishedImagePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpublished_image_post_params
      params.require(:unpublished_image_post).permit(:title, :description, :thumbnail_url, :status, :comments)
    end
end
