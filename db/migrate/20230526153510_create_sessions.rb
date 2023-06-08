class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.references :instrument_class, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
