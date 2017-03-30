class Topic < ApplicationRecord
	has_many :comments, dependent: :destroy
	belongs_to :user#, :counter_cache => true
	
	has_many :topic_category_ships
	has_many :categorys, :through => :topic_category_ships 

end
