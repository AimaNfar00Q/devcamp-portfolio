module ApplicationHelper

# def sample_helper  this methd will return smthng to return both yay and something do concat
#     x=2
#  if x==1
#  	"no"
#  else
#  	"yay"
#  	"something"
#  end
# 	 end


def login_helper
   if current_user.is_a?(User) 
    link_to "logout",destroy_user_session_path, method: :delete 
    else 
    (link_to "register",new_user_registration_path ) +
     "<br>".html_safe +
    ( link_to "login",new_user_session_path )
    
    end 
  end
end
