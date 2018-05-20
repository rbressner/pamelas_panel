class AddHoursToCohorts < ActiveRecord::Migration[5.2]
  def change
    add_column :cohorts, :class_hours, :time
    change_column :cohorts, :start_date, :date
    change_column :cohorts, :end_date, :date
  end
end
