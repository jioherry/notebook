class AddColumnImpressionToTopic < ActiveRecord::Migration[5.0]
  def change
  	add_column :topics, :impression, :integer, :default => 0
  end
end
