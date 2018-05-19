class AddUserTypeToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :user_type, :string
  end
end
