class BreastsController < ApplicationController
  before_action :set_breast, only: [:show, :edit, :update, :destroy]

  # GET /breasts
  # GET /breasts.json
  def index
    @breasts = Breast.all
  end

  # GET /breasts/1
  # GET /breasts/1.json
  def show
  end

  # GET /breasts/new
  def new
    @breast = Breast.new
  end

  # GET /breasts/1/edit
  def edit
  end

  # POST /breasts
  # POST /breasts.json
  def create
    @breast = Breast.new(breast_params)

      if @breast.save
        redirect_to root_path
      else
        redirect_to new_breast_path
      end
    end
  

  # PATCH/PUT /breasts/1
  # PATCH/PUT /breasts/1.json
  def update
    respond_to do |format|
      if @breast.update(breast_params)
        format.html { redirect_to @breast, notice: 'Breast was successfully updated.' }
        format.json { render :show, status: :ok, location: @breast }
      else
        format.html { render :edit }
        format.json { render json: @breast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breasts/1
  # DELETE /breasts/1.json
  def destroy
    @breast.destroy
    respond_to do |format|
      format.html { redirect_to breasts_url, notice: 'Breast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breast
      @breast = Breast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breast_params
      params.require(:breast).permit(:baby_id, :ftimes, :quantify, :duration)
    end
end
