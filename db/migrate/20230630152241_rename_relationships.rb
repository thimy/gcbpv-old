class RenameRelationships < ActiveRecord::Migration[7.0]
  def change
    rename_table :instrument_class_seasons, :instrument_classes_seasons
  end
end
