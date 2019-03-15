class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /gears
  # GET /gears.json
  def index
    @gears = current_user.gears
    @events = current_user.events
  end

  # GET /gears/1
  # GET /gears/1.json
  def show
    @gears = current_user.gears
    @events = current_user.events
  end

  # GET /gears/new
  def new
    @gear = current_user.gears.build
  end

  # GET /gears/1/edit
  def edit
  end

  # POST /gears
  # POST /gears.json
  def create
    @gear = current_user.gears.build(gear_params)
    if @gear.save
      redirect_to gears_path
    else
      redirect_to gears_path
    end
  end

  # PATCH/PUT /gears/1
  # PATCH/PUT /gears/1.json
  def update
    @gear = Gear.find(params[:id])
    @gear.update(gear_params)
    redirect_to gears_path
  end

  # DELETE /gears/1
  # DELETE /gears/1.json
  def destroy
  @gear = Gear.find(params[:id])
  @gear.destroy
  redirect_to gears_path
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gear
      @gear = Gear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gear_params
      params.require(:gear).permit(:name, :serie, :installation, :expiry, :description)
    end
end
