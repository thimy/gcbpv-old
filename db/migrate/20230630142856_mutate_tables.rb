class MutateTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :seasons_workshops
    drop_table :instrument_classes_seasons
    create_join_table :seasons, :instrument_class do |t|
      t.index :season_id
      t.index :instrument_class_id
    end
    create_join_table :workshops, :seasons do |t|
      t.index :workshop_id
      t.index :season_id
    end
  end
end
