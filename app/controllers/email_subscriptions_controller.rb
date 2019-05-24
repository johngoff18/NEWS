class EmailSubscriptionsController < ApplicationController
  before_action :set_email_subscription, only: [:show, :edit, :update, :destroy]

  # GET /email_subscriptions
  # GET /email_subscriptions.json
  def index
    @email_subscriptions = EmailSubscription.all
  end

  # GET /email_subscriptions/1
  # GET /email_subscriptions/1.json
  def show
  end

  # GET /email_subscriptions/new
  def new
    @email_subscription = EmailSubscription.new
  end

  # GET /email_subscriptions/1/edit
  def edit
  end

  # POST /email_subscriptions
  # POST /email_subscriptions.json
  def create
    @email_subscription = EmailSubscription.new(email_subscription_params)

    respond_to do |format|
      if @email_subscription.save
        format.html { redirect_to @email_subscription, notice: 'Email subscription was successfully created.' }
        format.json { render :show, status: :created, location: @email_subscription }
      else
        format.html { render :new }
        format.json { render json: @email_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_subscriptions/1
  # PATCH/PUT /email_subscriptions/1.json
  def update
    respond_to do |format|
      if @email_subscription.update(email_subscription_params)
        format.html { redirect_to @email_subscription, notice: 'Email subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_subscription }
      else
        format.html { render :edit }
        format.json { render json: @email_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_subscriptions/1
  # DELETE /email_subscriptions/1.json
  def destroy
    @email_subscription.destroy
    respond_to do |format|
      format.html { redirect_to email_subscriptions_url, notice: 'Email subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_subscription
      @email_subscription = EmailSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_subscription_params
      params.require(:email_subscription).permit(:email_address)
    end
end
