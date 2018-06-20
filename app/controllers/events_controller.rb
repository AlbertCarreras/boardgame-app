class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = find_event
  end

  def new
    @event = Event.new
    @event.date = Time.now
  end

  def create
    @event = Event.new(event_params)
    @event.host_id = current_user_id
    @event.save
    redirect_to @event
  end

  def edit
    @event = find_event
  end

  def update
    @event = find_event
    @event.update(event_params)
    redirect_to show
  end

  private

  def find_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :location, :date)
  end
end
