class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
