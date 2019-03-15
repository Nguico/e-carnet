class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /events
  # GET /events.json
  def index
    @events = current_user.events
    @gears = current_user.events
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = current_user.events.build
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to events_path
    else
      redirect_to events_path
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path
  end

  # DELETE /events/1
  # DELETE /events/1.json

  def destroy
  @event = Event.find(params[:id])
  @event.destroy
  redirect_to events_path
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:titre, :commentaire, :date, :gear_id)
    end
end
