class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :last_name
      t.string :first_name
      t.datetime :birthyear
      t.references :payor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
