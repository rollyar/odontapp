class ToothsController < ApplicationController
  before_action :set_tooth, only: %i[ show edit update destroy ]

  # GET /tooths or /tooths.json
  def index
    @tooths = Tooth.all
  end

  # GET /tooths/1 or /tooths/1.json
  def show
  end

  # GET /tooths/new
  def new
    @tooth = Tooth.new
  end

  # GET /tooths/1/edit
  def edit
  end

  # POST /tooths or /tooths.json
  def create
    @tooth = Tooth.new(tooth_params)

    respond_to do |format|
      if @tooth.save
        format.html { redirect_to tooth_url(@tooth), notice: "Tooth was successfully created." }
        format.json { render :show, status: :created, location: @tooth }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tooths/1 or /tooths/1.json
  def update
    respond_to do |format|
      if @tooth.update(tooth_params)
        format.html { redirect_to tooth_url(@tooth), notice: "Tooth was successfully updated." }
        format.json { render :show, status: :ok, location: @tooth }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tooths/1 or /tooths/1.json
  def destroy
    @tooth.destroy

    respond_to do |format|
      format.html { redirect_to tooths_url, notice: "Tooth was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tooth
      @tooth = Tooth.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tooth_params
      params.require(:tooth).permit(:position, :tooth_type, :number, :odontogram_id)
    end
end
