class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.boolean :is_paid
      t.references :season, null: false, foreign_key: true
      t.references :students, null: false, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
