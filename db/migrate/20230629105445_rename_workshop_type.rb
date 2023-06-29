class RenameWorkshopType < ActiveRecord::Migration[7.0]
  def change
    remove_column :workshops, :type
    add_column :workshops, :workshop_type, :string
  end
end
