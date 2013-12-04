class AddRemoveFeeToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :remove_fee_column, :boolean
  end
end
