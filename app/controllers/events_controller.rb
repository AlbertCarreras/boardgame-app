class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = find_event
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def find_event
    Event.find(params[:id])
  end

end
