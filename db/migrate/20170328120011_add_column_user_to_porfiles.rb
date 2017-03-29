class AddColumnUserToPorfiles < ActiveRecord::Migration[5.0]
  def change

  	add_column :porfiles, :nickname, :string
  	add_column :porfiles, :first_name, :string 
  	add_column :porfiles, :last_name, :string  

  end
end
