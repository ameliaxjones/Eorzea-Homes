class HousingsizesController < ApplicationController
  before_action :set_housingsize, only: %i[ show edit update destroy ]

  # GET /housingsizes or /housingsizes.json
  def index
    @housingsizes = Housingsize.all
  end

  # GET /housingsizes/1 or /housingsizes/1.json
  def show
  end

  # GET /housingsizes/new
  def new
    @housingsize = Housingsize.new
  end

  # GET /housingsizes/1/edit
  def edit
  end

  # POST /housingsizes or /housingsizes.json
  def create
    @housingsize = Housingsize.new(housingsize_params)

    respond_to do |format|
      if @housingsize.save
        format.html { redirect_to housingsize_url(@housingsize), notice: "Housingsize was successfully created." }
        format.json { render :show, status: :created, location: @housingsize }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @housingsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housingsizes/1 or /housingsizes/1.json
  def update
    respond_to do |format|
      if @housingsize.update(housingsize_params)
        format.html { redirect_to housingsize_url(@housingsize), notice: "Housingsize was successfully updated." }
        format.json { render :show, status: :ok, location: @housingsize }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @housingsize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housingsizes/1 or /housingsizes/1.json
  def destroy
    @housingsize.destroy

    respond_to do |format|
      format.html { redirect_to housingsizes_url, notice: "Housingsize was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housingsize
      @housingsize = Housingsize.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def housingsize_params
      params.require(:housingsize).permit(:value)
    end
end
