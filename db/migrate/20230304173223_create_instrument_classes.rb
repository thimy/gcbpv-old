class CreateInstrumentClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :instrument_classes do |t|
      t.references :instrument, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
