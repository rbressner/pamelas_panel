class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_cohorts do |t|
      t.integer :student_id
      t.integer :cohort_id
      t.references :student, foreign_key: true
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
