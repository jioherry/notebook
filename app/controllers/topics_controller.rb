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

	# GET /topics /latest
	def latest
  	@users = User.count(params[:id])
  	@topics = Topic.count(params[:id])
  	@comments = Comment.count(params[:id])
	end

	def new
		# authenticate_user!
		# 使用者要 new 一篇文
		@topic = current_user.topics.new
	end

	def create
		# 使用者可以 create 一篇文章
		# byebug
		@topic = current_user.topics.new(topic_params)
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
		# 使用者可以 update 一篇文章
		# @topic = Topic.find(params[:id])
		if @topic.update(topic_params)
			redirect_to topic_url(@topic)
		else
			render :edit
		end
	end

	def destroy
		# 使用者可以 destroy 一篇文章
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
			:category_ids => []
			)
	end

end
