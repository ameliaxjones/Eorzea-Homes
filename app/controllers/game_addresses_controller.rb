class GameAddressesController < ApplicationController
  before_action :set_game_address, only: %i[ show edit update destroy ]
  

  # GET /game_addresses or /game_addresses.json
  def index
    @game_addresses = GameAddress.where(user_id: current_user.id)
  end

  # GET /game_addresses/1 or /game_addresses/1.json
  def show
  end

  # GET /game_addresses/new
  def new
    @game_address = GameAddress.new
  end

  # GET /game_addresses/1/edit
  def edit
  end

  # POST /game_addresses or /game_addresses.json
  def create
    @game_address = GameAddress.new(game_address_params)

    respond_to do |format|
      if @game_address.save
        format.html { redirect_to game_address_url(@game_address), notice: "Game address was successfully created." }
        format.json { render :show, status: :created, location: @game_address }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_addresses/1 or /game_addresses/1.json
  def update
    respond_to do |format|
      if @game_address.update(game_address_params)
        format.html { redirect_to game_address_url(@game_address), notice: "Game address was successfully updated." }
        format.json { render :show, status: :ok, location: @game_address }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_addresses/1 or /game_addresses/1.json
  def destroy
    @game_address.destroy

    respond_to do |format|
      format.html { redirect_to game_addresses_url, notice: "Game address was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_address
      @game_address = GameAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_address_params
      params.require(:game_address).permit(:datacenter, :location, :plot, :ward, :roomnumber)
    end
end
