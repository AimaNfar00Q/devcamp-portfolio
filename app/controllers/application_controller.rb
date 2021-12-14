class ApplicationController < ActionController::Base
include DeviseWhitelist
include SetSource

def current_user #overwriting
	super
end


end
