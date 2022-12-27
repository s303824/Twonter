class TwontsController < ApplicationController
  before_action :set_twont, only: %i[ show edit update destroy ]

  # GET /twonts or /twonts.json
  def index
    @twonts = Twont.all
  end

  # GET /twonts/1 or /twonts/1.json
  def show
  end

  # GET /twonts/new
  def new
    @twont = Twont.new
  end

  # GET /twonts/1/edit
  def edit
  end

  # POST /twonts or /twonts.json
  def create
    @twont = Twont.new(twont_params)

    respond_to do |format|
      if @twont.save
        format.html { redirect_to twont_url(@twont), notice: "Twont was successfully created." }
        format.json { render :show, status: :created, location: @twont }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twont.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twonts/1 or /twonts/1.json
  def update
    respond_to do |format|
      if @twont.update(twont_params)
        format.html { redirect_to twont_url(@twont), notice: "Twont was successfully updated." }
        format.json { render :show, status: :ok, location: @twont }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twont.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twonts/1 or /twonts/1.json
  def destroy
    @twont.destroy

    respond_to do |format|
      format.html { redirect_to twonts_url, notice: "Twont was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twont
      @twont = Twont.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twont_params
      params.require(:twont).permit(:twont)
    end
end
