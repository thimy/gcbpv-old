class RemoveCityToInstrumentClasses < ActiveRecord::Migration[7.0]
  def change
    remove_reference :instrument_classes, :city
  end
end
