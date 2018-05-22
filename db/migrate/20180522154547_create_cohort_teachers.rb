class CreateCohortTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :cohort_teachers do |t|
      t.integer :teacher_id
      t.integer :cohort_id

      t.timestamps
    end
  end
end
