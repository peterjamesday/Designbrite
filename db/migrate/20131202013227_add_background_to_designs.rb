class AddBackgroundToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :background_image, :string
    add_column :designs, :background_image_repeat, :boolean
    add_column :designs, :background_image_size, :boolean
    add_column :designs, :background_image_position, :boolean
  end
end
