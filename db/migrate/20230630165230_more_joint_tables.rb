class MoreJointTables < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :status
    add_column :subscriptions, :status, :string
    create_join_table :instrument_classes, :subscriptions do |t|
      t.index :instrument_class_id
      t.index :subscription_id
    end
    create_join_table :subscriptions, :workshops do |t|
      t.index :subscription_id
      t.index :workshop_id
    end
  end
end
