class AddClassesToSubscriptions < ActiveRecord::Migration[7.0]
  def change
    add_reference :subscriptions, :instrument_class, foreign_key: true
    add_reference :subscriptions, :workshop, foreign_key: true
    remove_column :students, :birthyear
    add_column :students, :birthyear, :integer
  end
end
