class AddDayToSession < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :day, :string
  end
end
