class AdjustUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :email
    remove_column :users, :name
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end

end
