class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = current_user.comments.new(comment_params)
		@comment.topic_id = params[:topic_id]
		@comment.save

		redirect_to topic_path(params[:topic_id])
	end

	private

		def comment_params
			params.require(:comment).permit(:content, :topic_id, :user_id)
		end

end
