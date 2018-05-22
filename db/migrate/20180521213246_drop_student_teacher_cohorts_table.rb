class DropStudentTeacherCohortsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :student_cohorts
    drop_table :teacher_cohorts
  end
end
