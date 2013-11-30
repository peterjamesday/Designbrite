class AddHideSaveEventToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :hide_save_event, :boolean
    add_column :designs, :remove_event_header, :boolean
    add_column :designs, :hide_share_options, :boolean
    add_column :designs, :remove_title, :boolean
  end
end
