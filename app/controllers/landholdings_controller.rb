class LandholdingsController < ApplicationController
  before_action :set_landholding, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /landholdings
  # GET /landholdings.json
  def index
    @landholdings = Landholding.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /landholdings/1
  # GET /landholdings/1.json
  def show
  end

  # GET /landholdings/new
  def new
    @landholding = Landholding.new
  end

  # GET /landholdings/1/edit
  def edit
  end

  # POST /landholdings
  # POST /landholdings.json
  def create
    @landholding = Landholding.new(landholding_params)

    respond_to do |format|
      if @landholding.save
        format.html { redirect_to @landholding, notice: 'Landholding was successfully created.' }
        format.json { render :show, status: :created, location: @landholding }
      else
        format.html { render :new }
        format.json { render json: @landholding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landholdings/1
  # PATCH/PUT /landholdings/1.json
  def update
    respond_to do |format|
      if @landholding.update(landholding_params)
        format.html { redirect_to @landholding, notice: 'Landholding was successfully updated.' }
        format.json { render :show, status: :ok, location: @landholding }
      else
        format.html { render :edit }
        format.json { render json: @landholding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landholdings/1
  # DELETE /landholdings/1.json
  def destroy
    @landholding.destroy
    respond_to do |format|
      format.html { redirect_to landholdings_url, notice: 'Landholding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landholding
      @landholding = Landholding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landholding_params
      params.require(:landholding).permit(:university_id, :id, :classification, :description, :owner, :total_area_hectare, :total_area_meter, :acquisition, :titling_status, :date_issued, :tax_dec_no, :remarks, :titling_step_ein , :titling_step_zwei, :titling_step_drei, :titling_step_vier, :titling_step_funf, :titling_step_sechs, :titling_step_sieben, :titling_step_acht, :titling_step_neun, :titling_step_zehn)
    end
end