module ApplicationHelper

  def same_user?(user)
    user.id == current_user_id.to_i
  end

end
