class EventsController < ApplicationController

  # just stuck this here to put it somewhere
  # <%= f.input :date_date, as: :date %>
  # <%= f.input :date_hour, collection: 0..24 %>
  # <%= f.input :date_min, collection: [0, 15, 30, 45] %>

  def index
    @events = Event.all
  end

  def show
    @event = find_event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.host_id = current_user_id
    @event.save
    redirect_to @event
  end

  def edit

  end

  def update

  end

  private

  def find_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :location, :date)
  end
end
