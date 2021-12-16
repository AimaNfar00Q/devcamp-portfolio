module CurrentUserConcern
extend ActiveSupport::Concern

def current_user #overwriting
	super || guest_user #IF super is true mnz user is loggin then that user name will be show but no one is loggend in it super is false then this guest user will be shown
end

def guest_user 
  guest= GuestUser.new
  guest.name= "Guest User", 
  guest.first_name = "Guest",
   guest.last_name= "User",
   guest.email= "guest@user.com"
   guest
end
	

end