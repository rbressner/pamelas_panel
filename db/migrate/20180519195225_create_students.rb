class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :age
      t.string :education
      t.integer :teacher_id

      t.timestamps
    end
  end
end
