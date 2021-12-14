module DeviseWhitelist
	extend ActiveSupport::Concern

	included do
		before_action :configure_permitted_parameters, if: :devise_controller?  #through this we'll be able to get the value of customized attr name in upfdate and signup form
	end



def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
	devise_parameter_sanitizer.permit(:account_update, keys: [:name])
end

end
