module UsersHelper
  def has_file(user)
    i = user.file.blank? ? t(:no_file) : link_to(t(:view_file), user.file)
  end
end
