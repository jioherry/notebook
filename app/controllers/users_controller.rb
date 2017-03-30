class UsersController < ApplicationController

	def porfile
		@porfile = current_user.porfile
		# byebug
		@topics = current_user.topics
		@comments = current_user.comments
	end

	def edit
		@topics = current_user.topics
	end

end

