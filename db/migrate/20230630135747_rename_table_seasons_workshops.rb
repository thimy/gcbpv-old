class RenameTableSeasonsWorkshops < ActiveRecord::Migration[7.0]
  def change
    rename_table :workshops_seasons, :seasons_workshops
  end
end
