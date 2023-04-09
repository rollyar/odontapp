class ToothStatusesController < ApplicationController
  before_action :set_tooth_status, only: %i[ show edit update destroy ]

  # GET /tooth_statuses or /tooth_statuses.json
  def index
    @tooth_statuses = ToothStatus.all
  end

  # GET /tooth_statuses/1 or /tooth_statuses/1.json
  def show
  end

  # GET /tooth_statuses/new
  def new
    @tooth_status = ToothStatus.new
  end

  # GET /tooth_statuses/1/edit
  def edit
  end

  # POST /tooth_statuses or /tooth_statuses.json
  def create
    @tooth_status = ToothStatus.new(tooth_status_params)

    respond_to do |format|
      if @tooth_status.save
        format.html { redirect_to tooth_status_url(@tooth_status), notice: "Tooth status was successfully created." }
        format.json { render :show, status: :created, location: @tooth_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tooth_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tooth_statuses/1 or /tooth_statuses/1.json
  def update
    respond_to do |format|
      if @tooth_status.update(tooth_status_params)
        format.html { redirect_to tooth_status_url(@tooth_status), notice: "Tooth status was successfully updated." }
        format.json { render :show, status: :ok, location: @tooth_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tooth_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tooth_statuses/1 or /tooth_statuses/1.json
  def destroy
    @tooth_status.destroy

    respond_to do |format|
      format.html { redirect_to tooth_statuses_url, notice: "Tooth status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tooth_status
      @tooth_status = ToothStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tooth_status_params
      params.require(:tooth_status).permit(:current_treatment, :treatment_history, :observations, :tooth_id)
    end
end
