class AddHideContactHostToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :hide_contact_host, :boolean, default: true
  end
end
