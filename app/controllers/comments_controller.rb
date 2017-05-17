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

	def update
		@comment = current_user.comments.find(params[:id])
		@comment.update(comment_params)
		topic = Topic.find(params[:topic_id])

		redirect_to topic_url(topic)
	end

	private

		def comment_params
			params.require(:comment).permit(:content, :topic_id, :user_id)
		end

end
