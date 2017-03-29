class UsersController < ApplicationController

	def porfile
		@porfile = current_user.porfile
	end

end

