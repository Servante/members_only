class TpostsController < ApplicationController
  before_action :set_tpost, only: %i[ show edit update destroy ]

  # GET /tposts or /tposts.json
  def index
    @tposts = Tpost.all
  end

  # GET /tposts/1 or /tposts/1.json
  def show
  end

  # GET /tposts/new
  def new
    @tpost = Tpost.new
  end

  # GET /tposts/1/edit
  def edit
  end

  # POST /tposts or /tposts.json
  def create
    @tpost = Tpost.new(tpost_params)

    respond_to do |format|
      if @tpost.save
        format.html { redirect_to tpost_url(@tpost), notice: "Tpost was successfully created." }
        format.json { render :show, status: :created, location: @tpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tposts/1 or /tposts/1.json
  def update
    respond_to do |format|
      if @tpost.update(tpost_params)
        format.html { redirect_to tpost_url(@tpost), notice: "Tpost was successfully updated." }
        format.json { render :show, status: :ok, location: @tpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tposts/1 or /tposts/1.json
  def destroy
    @tpost.destroy

    respond_to do |format|
      format.html { redirect_to tposts_url, notice: "Tpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpost
      @tpost = Tpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tpost_params
      params.require(:tpost).permit(:title, :body)
    end
end
