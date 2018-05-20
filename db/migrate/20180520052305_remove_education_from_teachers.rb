class RemoveEducationFromTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :education
    remove_column :students, :education
  end
end
