class AddAlotToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :remove_date, :boolean
    add_column :designs, :remove_org_name, :boolean
    add_column :designs, :remove_org_location, :boolean
    add_column :designs, :discount_code, :boolean
    add_column :designs, :hide_ticket_name, :boolean
    add_column :designs, :hide_promo_link, :boolean
    add_column :designs, :hide_payment_logos, :boolean
    add_column :designs, :hide_calendar_link, :boolean
    add_column :designs, :increase_size_salesend, :boolean
  end
end
