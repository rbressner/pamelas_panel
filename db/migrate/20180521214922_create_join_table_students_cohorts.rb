class CreateJoinTableStudentsCohorts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :students, :cohorts do |t|
      t.index [:student_id, :cohort_id]
    end
  end
end
