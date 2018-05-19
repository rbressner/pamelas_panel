class AddUserTypeToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :user_type, :string
  end
end
