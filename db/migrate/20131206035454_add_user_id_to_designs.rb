class AddUserIdToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :user_id, :integer
    add_index :designs, :user_id
  end
end
