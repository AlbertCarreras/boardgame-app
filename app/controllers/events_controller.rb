class EventsController < ApplicationController
  include EventPlayerHelper

  before_action :current_user_id

  def index
    @events = Event.all
  end

  def show
    @event = find_event
    @eventplayer = EventPlayer.new
  end

  def new
    @event = Event.new
    @event.date = Time.now
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      @event.host_id = current_user_id
      @event.save
      redirect_to @event
    else
      render :new
    end

  end

  def edit
    @event = find_event
  end

  def update
    @event = find_event
    @event.update(event_params)
    redirect_to show
  end

  def destroy
    if current_user_hosted_event?
      find_hosted_event.destroy
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def current_user_hosted_event?
    current_user.hosted_event_ids.include?(find_hosted_event_ownership_id)
  end

  def find_hosted_event_ownership_id
    find_hosted_event.id
  end

  def find_hosted_event
    Event.find(params[:event][:hosted_event_id])
  end

  def find_event
    Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :address, :city, :country, :date)
  end

end
