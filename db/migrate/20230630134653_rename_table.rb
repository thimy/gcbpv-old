class RenameTable < ActiveRecord::Migration[7.0]
  def self.up
    rename_table :seasons_instrument_classes, :instrument_classes_seasons
    rename_table :seasons_workshops, :workshops_seasons
  end

  def self.down
    rename_table :instrument_classes_seasons, :seasons_instrument_classes
    rename_table :seasons_workshops, :workshops_seasons
  end
end
