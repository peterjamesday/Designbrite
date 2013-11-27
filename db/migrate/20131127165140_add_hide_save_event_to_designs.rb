class AddHideSaveEventToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :hide_save_event, :boolean, default: true
    add_column :designs, :remove_event_header, :boolean, default: true
    add_column :designs, :hide_share_options, :boolean, default: true
    add_column :designs, :remove_title, :boolean, default: true
  end
end
