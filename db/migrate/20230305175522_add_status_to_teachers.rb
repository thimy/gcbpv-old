class AddStatusToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :status, :string
    add_column :instrument_classes, :city, :string
    add_column :instrument_classes, :class_day, :string
    add_column :instrument_classes, :start_time, :time
    add_column :instrument_classes, :end_time, :time
    add_column :posts, :category, :string
    add_reference :posts, :event, foreign_key: true
  end
end
