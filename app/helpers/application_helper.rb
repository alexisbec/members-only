module ApplicationHelper
  def signup_link_name(user)
    if user_signed_in?
      user.author
    else
      "Sign Up"
    end
  end

  def signup_link_path
    if user_signed_in?
      edit_user_registration_path
    else
      new_user_registration_path
    end
  end

  def session_link_name
    if user_signed_in?
      "Logout"
    else
      "Log In"
    end
  end

  def session_link_path
    if user_signed_in?
      destroy_user_session_path
    else
      new_user_session_path
    end
  end
end




# <% if user_signed_in? %>
#   <span><%= link_to current_user.author, edit_user_registration_path, class: "white-btn" %></span>
#   <span><%= link_to "Logout", destroy_user_session_path, method: :delete, class: "white-btn" %></span>
# <% else %>
#   <span><%= link_to 'Sign Up', new_user_registration_path, class: "white-btn" %></span>
#   <span><%= link_to 'Log In', new_user_session_path, class: "white-btn" %></span>
# <% end %>
