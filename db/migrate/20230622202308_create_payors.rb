class CreatePayors < ActiveRecord::Migration[7.0]
  def change
    create_table :payors do |t|
      t.string :last_name
      t.string :first_name
      t.string :street_address
      t.string :postcode
      t.string :city
      t.string :phone
      t.string :mail

      t.timestamps
    end
  end
end
