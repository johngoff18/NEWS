class SuggestedCategoriesController < ApplicationController
  before_action :set_suggested_category, only: [:show, :edit, :update, :destroy]
layout 'layouts/admin'
  # GET /suggested_categories
  # GET /suggested_categories.json
  def index
    @suggested_categories = SuggestedCategory.all
  end

  # GET /suggested_categories/1
  # GET /suggested_categories/1.json
  def show
  end

  # GET /suggested_categories/new
  def new
    @suggested_category = SuggestedCategory.new
  end

  # GET /suggested_categories/1/edit
  def edit
  end

  # POST /suggested_categories
  # POST /suggested_categories.json
  def create
    @suggested_category = SuggestedCategory.new(suggested_category_params)

    respond_to do |format|
      if @suggested_category.save
        format.html { redirect_to @suggested_category, notice: 'Suggested category was successfully created.' }
        format.json { render :show, status: :created, location: @suggested_category }
      else
        format.html { render :new }
        format.json { render json: @suggested_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggested_categories/1
  # PATCH/PUT /suggested_categories/1.json
  def update
    respond_to do |format|
      if @suggested_category.update(suggested_category_params)
        format.html { redirect_to @suggested_category, notice: 'Suggested category was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggested_category }
      else
        format.html { render :edit }
        format.json { render json: @suggested_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggested_categories/1
  # DELETE /suggested_categories/1.json
  def destroy
    @suggested_category.destroy
    respond_to do |format|
      format.html { redirect_to suggested_categories_url, notice: 'Suggested category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggested_category
      @suggested_category = SuggestedCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggested_category_params
      params.require(:suggested_category).permit(:category, :approved)
    end
end
