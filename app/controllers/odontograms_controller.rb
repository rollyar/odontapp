class OdontogramsController < ApplicationController
  before_action :set_odontogram, only: %i[ show edit update destroy ]

  # GET /odontograms or /odontograms.json
  def index
    @odontograms = Odontogram.all
  end

  # GET /odontograms/1 or /odontograms/1.json
  def show
  end

  # GET /odontograms/new
  def new
    @odontogram = Odontogram.new
  end

  # GET /odontograms/1/edit
  def edit
  end

  # POST /odontograms or /odontograms.json
  def create
    @odontogram = Odontogram.new(odontogram_params)

    respond_to do |format|
      if @odontogram.save
        format.html { redirect_to odontogram_url(@odontogram), notice: "Odontogram was successfully created." }
        format.json { render :show, status: :created, location: @odontogram }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @odontogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /odontograms/1 or /odontograms/1.json
  def update
    respond_to do |format|
      if @odontogram.update(odontogram_params)
        format.html { redirect_to odontogram_url(@odontogram), notice: "Odontogram was successfully updated." }
        format.json { render :show, status: :ok, location: @odontogram }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @odontogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /odontograms/1 or /odontograms/1.json
  def destroy
    @odontogram.destroy

    respond_to do |format|
      format.html { redirect_to odontograms_url, notice: "Odontogram was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_odontogram
      @odontogram = Odontogram.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def odontogram_params
      params.require(:odontogram).permit(:patient_id, :exam_date, :exam_type)
    end
end
