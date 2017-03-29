class Topic < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :topic_category_ships
	has_many :categorys, :through => :topic_category_ships 

end