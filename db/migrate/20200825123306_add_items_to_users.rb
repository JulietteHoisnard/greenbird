class AddItemsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, default: 'New User'
    add_column :users, :bio, :string, default: "Your bio goes here. :) Say something cool about yourself!"
    add_column :users, :country, :string, default: 'World'
  end
end
