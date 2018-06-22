module AnalyticsHelper

  def events_now
    Event.select { |e| e.date > Time.now }.count
  end

end
