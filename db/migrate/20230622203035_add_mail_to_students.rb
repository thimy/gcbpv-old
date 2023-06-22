class AddMailToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :mail, :string, default: false
  end
end
