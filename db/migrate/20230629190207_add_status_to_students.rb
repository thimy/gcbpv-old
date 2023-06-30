class AddStatusToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :status, :string
    remove_column :subscriptions, :is_paid
    add_column :subscriptions, :amount_paid, :decimal
  end
end
