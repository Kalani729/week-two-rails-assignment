module ApplicationHelper
  def login_helper
    if admin_signed_in?
    (link_to "Logout", destroy_admin_session_path, method: :delete) + " ".html_safe +
    (link_to current_admin.email, edit_admin_registration_path)
    else
    (link_to "Sign In", new_admin_session_path) + " ".html_safe +
    (link_to "Register", new_admin_registration_path)
    end
  end     
end