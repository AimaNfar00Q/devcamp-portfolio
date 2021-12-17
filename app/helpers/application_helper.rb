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


def login_helper style =''
   if current_user.is_a?(GuestUser)
    (link_to "register",new_user_registration_path, class:style ) +
     " ".html_safe +
    ( link_to "login",new_user_session_path , class:style)
    else 
   link_to "logout",destroy_user_session_path, method: :delete , class:style
    
    end 
  end

  def source_helper(layout_name)
   if session[:source]
     greeting= "Thanks for visiting me from #{session[:source]} and you are on #{layout_name} layout."
  	 content_tag(:p, greeting, class: 'source-greeting')
end
  end
     end
