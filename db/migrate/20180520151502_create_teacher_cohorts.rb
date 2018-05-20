class CreateTeacherCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_cohorts do |t|
      t.integer :teacher_id
      t.integer :cohort_id
      t.references :teacher, foreign_key: true
      t.references :cohort, foreign_key: true

      t.timestamps
    end
  end
end
