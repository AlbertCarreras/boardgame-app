module EventPlayerHelper

  def player_list_by_player(event_id)
    Event.find(event_id).players
  end

  def includes_current_player?(event_id)
    player_list_by_player(event_id).include?(current_user)
  end

  def player_list_count(event_id)
    player_list_by_player(event_id).count
  end

  def show_count_prompt(event_id)
    a = player_list_count(event_id)
    prompt = pluralize(a, 'registered player')
    if includes_current_player?(event_id)
      link_to 'Unregister', event_path(event_id)
    else
      if a == 0
        link_to 'Register now!', event_path(event_id)
      else
        link_to "Join #{prompt} now!", event_path(event_id)
      end
    end
  end
end
