class CreateTopicCategoryShips < ActiveRecord::Migration[5.0]
  def change
    create_table :topic_category_ships do |t|

    	t.integer :topic_id
    	t.integer :category_id

      t.timestamps
    end
  end
end
