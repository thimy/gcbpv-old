class AddPriceToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :workshops, :type, :string, default: false
    add_column :plans, :awakening_price, :decimal, default: false
    add_column :plans, :kids_discovery_price, :decimal, default: false
    add_column :plans, :discovery_price, :decimal, default: false
  end
end
