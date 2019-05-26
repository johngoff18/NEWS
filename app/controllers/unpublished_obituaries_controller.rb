class UnpublishedObituariesController < ApplicationController
  before_action :set_unpublished_obituary, only: [:show, :edit, :update, :destroy]
layout 'layouts/admin'

  # GET /unpublished_obituaries
  # GET /unpublished_obituaries.json
  def index
    @unpublished_obituaries = UnpublishedObituary.all
  end

  # GET /unpublished_obituaries/1
  # GET /unpublished_obituaries/1.json
  def show
  end

  # GET /unpublished_obituaries/new
  def new
    @unpublished_obituary = UnpublishedObituary.new
  end

  # GET /unpublished_obituaries/1/edit
  def edit
  end

  # POST /unpublished_obituaries
  # POST /unpublished_obituaries.json
  def create
    @unpublished_obituary = UnpublishedObituary.new(unpublished_obituary_params)

    respond_to do |format|
      if @unpublished_obituary.save
        format.html { redirect_to @unpublished_obituary, notice: 'Unpublished obituary was successfully created.' }
        format.json { render :show, status: :created, location: @unpublished_obituary }
      else
        format.html { render :new }
        format.json { render json: @unpublished_obituary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unpublished_obituaries/1
  # PATCH/PUT /unpublished_obituaries/1.json
  def update
    respond_to do |format|
      if @unpublished_obituary.update(unpublished_obituary_params)
        format.html { redirect_to @unpublished_obituary, notice: 'Unpublished obituary was successfully updated.' }
        format.json { render :show, status: :ok, location: @unpublished_obituary }
      else
        format.html { render :edit }
        format.json { render json: @unpublished_obituary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unpublished_obituaries/1
  # DELETE /unpublished_obituaries/1.json
  def destroy
    @unpublished_obituary.destroy
    respond_to do |format|
      format.html { redirect_to unpublished_obituaries_url, notice: 'Unpublished obituary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpublished_obituary
      @unpublished_obituary = UnpublishedObituary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpublished_obituary_params
      params.require(:unpublished_obituary).permit(:name, :death_date, :thumbnail_url, :status, :comments)
    end
end
