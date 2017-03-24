class AddCommentsCountToTopic < ActiveRecord::Migration[5.0]
  def change

  	add_column :topics, :comments_count, :integer, :default => 0

  	Topic.pluck(:id).each do |i|
      Topic.reset_counters(i, :comments)
    end

  end
end
