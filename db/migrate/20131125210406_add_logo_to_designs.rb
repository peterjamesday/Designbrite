class AddLogoToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :logo, :string
  end
end
