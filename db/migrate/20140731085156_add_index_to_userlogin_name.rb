class AddIndexToUserloginName < ActiveRecord::Migration
  def change
    add_index :user_logins, :name, unique:true
  end
end
