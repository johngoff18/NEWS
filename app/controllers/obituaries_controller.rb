class ObituariesController < ApplicationController
  before_action :set_obituary, only: [:show, :edit, :update, :destroy]
  layout 'layouts/admin'
add_breadcrumb "Home", :root_path
  add_breadcrumb "Obituaries", :obituaries_path
  # GET /obituaries
  # GET /obituaries.json
  def index
    @obituaries = Obituary.all
    add_breadcrumb "All"
  end

  # GET /obituaries/1
  # GET /obituaries/1.json
  def show
  end

  # GET /obituaries/new
  def new
    @obituary = Obituary.new
  end

  # GET /obituaries/1/edit
  def edit
  end

  # POST /obituaries
  # POST /obituaries.json
  def create
    @obituary = Obituary.new(obituary_params)

    respond_to do |format|
      if @obituary.save
        format.html { redirect_to @obituary, notice: 'Obituary was successfully created.' }
        format.json { render :show, status: :created, location: @obituary }
      else
        format.html { render :new }
        format.json { render json: @obituary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obituaries/1
  # PATCH/PUT /obituaries/1.json
  def update
    respond_to do |format|
      if @obituary.update(obituary_params)
        format.html { redirect_to @obituary, notice: 'Obituary was successfully updated.' }
        format.json { render :show, status: :ok, location: @obituary }
      else
        format.html { render :edit }
        format.json { render json: @obituary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obituaries/1
  # DELETE /obituaries/1.json
  def destroy
    @obituary.destroy
    respond_to do |format|
      format.html { redirect_to obituaries_url, notice: 'Obituary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obituary
      @obituary = Obituary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obituary_params
      params.require(:obituary).permit(:name, :death_date, :content)
    end
end
