class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	protected

		def authenticate_admin
			if authenticate_or_request_with_http_basic do |user_name, password|
	      	user_name == "admin" && password == "12345"
	    	end
		  else	
		    flash[:alert] = "Not allow!"
		    redirect_to topics_path
		  end
		end

end
