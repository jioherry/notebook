class TopicsController < ApplicationController

	before_action :authenticate_user!, only:[ :new ]
	before_action :set_topic, only:[ :edit, :update, :destroy]

	def index
		@topics = Topic.all
	end

	def new
		# authenticate_user!
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(topic_params)
		@topic.save
		redirect_to topics_url
	end

	def show
		@topic = Topic.find(params[:id])
		@comments = @topic.comments
	end

	def edit
	end

	def update
		@topic.save
		redirect_to topic_url(@topic)
	end

	def destroy
		@topic.destroy
		redirect_to topics_url
	end

	private

	def set_topic
		@topic = Topic.find(params[:id])
	end

	def topic_params
		params.require(:topic).permit(
			:title, 
			:date, 
			:description, 
			:file_location)
	end



end
