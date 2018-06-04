class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.integer :age
      t.integer :salary
      t.string :education
      t.integer :admin_id

      t.timestamps
    end
  end
end
