class RemoveJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :cohorts_students
  end
end
