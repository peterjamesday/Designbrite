class AddIncreaseSizePriceToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :increase_size_price, :boolean
  end
end
