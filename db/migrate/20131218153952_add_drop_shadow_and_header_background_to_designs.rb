class AddDropShadowAndHeaderBackgroundToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :drop_shadow, :boolean
    add_column :designs, :header_background, :boolean
  end
end
