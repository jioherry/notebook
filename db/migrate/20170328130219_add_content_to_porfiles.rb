class AddContentToPorfiles < ActiveRecord::Migration[5.0]
  def change

  	add_column :porfiles, :content, :string

  end
end
