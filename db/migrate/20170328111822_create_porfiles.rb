class CreatePorfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :porfiles do |t|
    	
      t.timestamps
    end
  end
end
