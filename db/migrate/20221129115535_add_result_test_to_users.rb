class AddResultTestToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :result_test, :integer
  end
end
