class AddPersonNumToUsers < ActiveRecord::Migration
  def change
    add_column :users, :person_num, :integer
  end
end
