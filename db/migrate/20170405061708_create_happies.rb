class CreateHappies < ActiveRecord::Migration[5.0]
  def change
    create_table :happies do |t|

      t.timestamps
    end

    add_column :happies, :name, :string
  end
end
