class AddUseridToTopics < ActiveRecord::Migration[5.0]
  def change
  	add_column :topics, :user_id, :integer
  	remove_column :topics, :date, :date
  end
end
