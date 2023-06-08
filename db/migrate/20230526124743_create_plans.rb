class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :class_price
      t.decimal :workshop_price
      t.decimal :obc_markup
      t.decimal :outbounds_markup

      t.timestamps
    end
  end
end
