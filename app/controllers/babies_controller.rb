class BabiesController < ApplicationController
  before_action :set_baby, only: [:show, :edit, :update, :destroy]

  # GET /babies
  # GET /babies.json
  def index
    @babies = Baby.all
  end

  # GET /babies/1
  # GET /babies/1.json
  def show
    @baby = Baby.find(params[:id])
  end

  # GET /babies/new
  def new
    @baby = Baby.new
  end

  # GET /babies/1/edit
  def edit
  end

  # POST /babies
  # POST /babies.json
  def create
    @baby = Baby.new(baby_params)

      if @baby.save
        redirect_to root_path
      else
        redirect_to new_baby_path
      end
    end

  # PATCH/PUT /babies/1
  # PATCH/PUT /babies/1.json
  def update
    respond_to do |format|
      if @baby.update(baby_params)
        format.html { redirect_to @baby, notice: 'Baby was successfully updated.' }
        format.json { render :show, status: :ok, location: @baby }
      else
        format.html { render :edit }
        format.json { render json: @baby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babies/1
  # DELETE /babies/1.json
  def destroy
    @baby.destroy
    redirect_to root_path

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby
      @baby = Baby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baby_params
      params.require(:baby).permit(:name)
    end
end
