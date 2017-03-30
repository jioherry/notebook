class UsersController < ApplicationController

	def porfile
		@topics = current_user.topics
		@comments = current_user.comments
	end

	def update
	# 使用者可以 update 一篇文章
	# @topic = Topic.find(params[:id])
		if current_user.update(user_params)

			redirect_to porfile_users_url
		end
	end

	private

		def user_params
			params.require(:user).permit(:email, :nickname, :content)
		end 

end

