class AddOmniauthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end

    add_column :users, :fb_uid, :string
    add_column :users, :fb_token, :string

    add_index :users, :fb_uid