class ChangePasswordToBeStringInAdmins < ActiveRecord::Migration[5.2]
  def change
    change_column :admins, :password, :string
  end
end
