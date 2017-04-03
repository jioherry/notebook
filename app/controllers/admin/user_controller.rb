class Admin::UserController < ApplicationController

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)

		redirect_to admin_categories_url(@user)
	end

	private

		def category_params
			params.require(:user).permit(:email, :nickname)
		end

end
