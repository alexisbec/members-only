module ApplicationHelper
  def signup_link_path
    if user_signed_in?
      link_to(current_user.author, edit_user_registration_path, class: "white-btn")
    else
      link_to('Sign Up', new_user_registration_path, class: "white-btn")
    end
  end

  def session_link_path
    if user_signed_in?
      link_to("Logout", destroy_user_session_path, method: :delete, class: "white-btn")
    else
      link_to('Log In', new_user_session_path, class: "white-btn")
    end
  end
end
