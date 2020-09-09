module ApplicationHelper
  def profile_image_class(user)
    user.profile_image_id? ? "attachment user profile_image" : "attachment user profile_image fallback"
  end

  def profile_image_alt(user)
    user.profile_image_id? ? "Profile image" : "No image icon"
  end
end
