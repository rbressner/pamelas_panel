class RemoveTeachersFromStudentsAndAdminsFromTeachers < ActiveRecord::Migration[5.2]
  def change
    remove_column :teachers, :admin_id
    remove_column :students, :teacher_id
  end
end
