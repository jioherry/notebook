class AddUserToPorfile < ActiveRecord::Migration[5.0]
  def change

  	add_column :porfiles, :email, :string 
  	add_column :porfiles, :user_id, :integer
  end
end
