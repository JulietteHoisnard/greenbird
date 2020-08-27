class ModificationUSers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :username, from: 'Username', to: 'New user'
  end
end
