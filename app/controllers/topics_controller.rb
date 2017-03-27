class TopicsController < ApplicationController

	before_action :authenticate_user!, only:[ :new, :edit, :update, :destroy]
	before_action :set_topic, only:[ :show, :edit, :update, :destroy]

	def index
		if params[:categories].present? # 如果有 category 傳入
			@category = Category.find(params[:categories])
			@topics = @category.topics.order('comments_count desc',).page(params[:page]).per(5)
		else
			@topics = Topic.all.order('comments_count desc').page(params[:page]).per(5)
		end
	end

	def new
		# authenticate_user!
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(topic_params)
		if @topic.save
			redirect_to topics_url
		else
			render :new
		end
	end

	def show
		# @topic = Topic.find(params[:id])
		@comments = @topic.comments.order('created_at desc')
	end

	def edit
		# @topic = Topic.find(params[:id])
	end

	def update
		# @topic = Topic.find(params[:id])
		if @topic.update(topic_params)
			redirect_to topic_url(@topic)
		else
			render :edit
		end
	end

	def destroy
		# @topic = Topic.find(params[:id])
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
			:file_location,
			:category_id,
			:category_ids => []
			)
	end



end
