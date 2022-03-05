class HCatsController < ApplicationController
  before_action :set_h_cat, only: %i[ show edit update destroy ]

  # GET /h_cats or /h_cats.json
  def index
    @h_cats = HCat.all
  end

  # GET /h_cats/1 or /h_cats/1.json
  def show
  end

  # GET /h_cats/new
  def new
    @h_cat = HCat.new
  end

  # GET /h_cats/1/edit
  def edit
  end

  # POST /h_cats or /h_cats.json
  def create
    @h_cat = HCat.new(h_cat_params)

    respond_to do |format|
      if @h_cat.save
        format.html { redirect_to h_cat_url(@h_cat), notice: "H cat was successfully created." }
        format.json { render :show, status: :created, location: @h_cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @h_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /h_cats/1 or /h_cats/1.json
  def update
    respond_to do |format|
      if @h_cat.update(h_cat_params)
        format.html { redirect_to h_cat_url(@h_cat), notice: "H cat was successfully updated." }
        format.json { render :show, status: :ok, location: @h_cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @h_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /h_cats/1 or /h_cats/1.json
  def destroy
    @h_cat.destroy

    respond_to do |format|
      format.html { redirect_to h_cats_url, notice: "H cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_h_cat
      @h_cat = HCat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def h_cat_params
      params.require(:h_cat).permit(:listing_id, :small, :med, :large, :apartment)
    end
end
