class RemoveColumnTopicsCategoryId < ActiveRecord::Migration[5.0]
  def change

  	remove_column :topics, :category_id

  end
end
