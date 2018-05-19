class AddUserTypeToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :user_type, :string
  end
end
