class RemoveCategoryToPost < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :category
    add_reference :posts, :category, foreign_key: true
  end
end
