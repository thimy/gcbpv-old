class ChangeCityStringToReference < ActiveRecord::Migration[7.0]
  def change
    remove_column :instrument_classes, :city, :string
    add_reference :instrument_classes, :city, foreign_key: true
  end
end
