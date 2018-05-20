class AddEducationToTeachersAndStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :education, :text
    add_column :students, :education, :text
  end
end
