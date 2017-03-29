class AddTopicsCommentsIdToUser < ActiveRecord::Migration[5.0]
  def change

  	add_column :users, :topic_id, :integer
  	add_column :users, :comment_id, :integer

  end
end
