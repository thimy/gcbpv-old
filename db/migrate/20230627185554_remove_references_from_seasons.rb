class RemoveReferencesFromSeasons < ActiveRecord::Migration[7.0]
  def change
    remove_column :seasons, :instrument_class_id
    remove_column :seasons, :workshop_id

    create_table :seasons_instrument_classes do |t|
      t.belongs_to :season
      t.belongs_to :instrument_class
    end

    create_table :seasons_workshops do |t|
      t.belongs_to :season
      t.belongs_to :workshop
    end
  end
end
