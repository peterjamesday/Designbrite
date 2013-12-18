class AddHideSalesEndToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :hide_sales_end, :boolean
  end
end
