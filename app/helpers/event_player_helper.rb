module EventPlayerHelper

  def current_event_player(event_id)
    current_user.event_players.find_by(event_id: event_id)
  end

  def current_event_player_id(event_id)
    current_event_player(event_id).id
  end

  def player_list_by_player(event_id)
    Event.find(event_id).players
  end

  def registered?(event_id)
    player_list_by_player(event_id).include?(current_user)
  end

  def player_list_count(event_id)
    player_list_by_player(event_id).count
  end

  def host?

    User.host_events

  end

  def show_count_prompt(event_id)
    a = player_list_count(event_id)
    prompt = pluralize(a, 'registered player')
    if !current_user.hosted_event_ids.include?(event_id)
      if registered?(event_id)
        link_to 'Unregister', event_path(event_id)
      else
        if a == 0
          link_to 'Register now!', event_path(event_id)
        else
          link_to "Join #{prompt} now!", event_path(event_id)
        end
      end

    else
      if a == 0
        "No players registered yet."
      else
        "#{prompt} players registered!"
      end
    end
  end

end
