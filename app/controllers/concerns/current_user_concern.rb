module CurrentUserConcern
extend ActiveSupport::Concern

def current_user #overwriting
	super || guest_user #IF super is true mnz user is loggin then that user name will be show but no one is loggend in it super is false then this guest user will be shown
end

def guest_user 
  OpenStruct.new(name: "Guest User", 
  first_name:"Guest",
   last_name:"User",
   email:"guest@user.com"
   ) 
end
	

end