class CreateCohortStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohort_students do |t|
      t.integer :student_id
      t.integer :cohort_id

      t.timestamps
    end
  end
end
