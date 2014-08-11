class AddWhoseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :whose, :string
  end
end
