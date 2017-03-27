class AddTopicToCategory < ActiveRecord::Migration[5.0]
  def change
  	add_column :categories, :topic_id, :integer
  end
end
