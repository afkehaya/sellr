class MerchantApplicationsController < ApplicationController
  before_action :set_merchant_application, only: [:show, :edit, :update, :destroy]

  # GET /merchant_applications
  # GET /merchant_applications.json
  def index
    @merchant_applications = MerchantApplication.all
  end

  # GET /merchant_applications/1
  # GET /merchant_applications/1.json
  def show
  end

  # GET /merchant_applications/new
  def new
    @merchant_application = MerchantApplication.new
  end

  # GET /merchant_applications/1/edit
  def edit
  end

  def thankyou
    # Routes to thankyou page after a merchant applies.
    
  end

  # POST /merchant_applications
  # POST /merchant_applications.json
  def create
    @merchant_application = MerchantApplication.new(merchant_application_params)

    respond_to do |format|
      if @merchant_application.save
        format.html { redirect_to '/thankyou', notice: 'Merchant application was successfully created.' }
        format.json { render :show, status: :created, location: @merchant_application }
      else
        format.html { render :new }
        format.json { render json: @merchant_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merchant_applications/1
  # PATCH/PUT /merchant_applications/1.json
  def update
    respond_to do |format|
      if @merchant_application.update(merchant_application_params)
        format.html { redirect_to @merchant_application, notice: 'Merchant application was successfully updated.' }
        format.json { render :show, status: :ok, location: @merchant_application }
      else
        format.html { render :edit }
        format.json { render json: @merchant_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merchant_applications/1
  # DELETE /merchant_applications/1.json
  def destroy
    @merchant_application.destroy
    respond_to do |format|
      format.html { redirect_to merchant_applications_url, notice: 'Merchant application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant_application
      @merchant_application = MerchantApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merchant_application_params
      params.require(:merchant_application).permit(:first_name, :last_name, :company, :phone_number, :website)
    end
end
