class AddRemoveLogoToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :remove_logo, :boolean
  end
end
