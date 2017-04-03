class Admin::CategoriesController < ApplicationController

	before_action :authenticate

	def index
		@categories = Category.all
		@users = User.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		@category.save

		redirect_to admin_categories_url
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		@category.update(category_params)

		redirect_to admin_categories_url
	end

	def destroy
		# 如何找到未使用過的 category
	end

	protected

		def authenticate
	    authenticate_or_request_with_http_basic do |user_name, password|
	      user_name == "admin" && password == "12345"
	    end
	  end

	private

		def category_params
			params.require(:category).permit(:name, :topic_id)
		end

end
