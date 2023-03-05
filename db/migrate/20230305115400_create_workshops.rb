class CreateWorkshops < ActiveRecord::Migration[7.0]
  def change
    create_table :workshops do |t|
      t.string :name
      t.references :teacher, null: false, foreign_key: true
      t.text :description
      t.string :workshop_day
      t.time :start_time
      t.time :end_time
      t.string :location

      t.timestamps
    end
  end
end
