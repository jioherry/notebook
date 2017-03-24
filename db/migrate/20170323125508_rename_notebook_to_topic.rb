class RenameNotebookToTopic < ActiveRecord::Migration[5.0]
  def change
  	rename_table :notebooks, :topics
  end
end
