class ChangeResultTestToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :result_test, :string
  end
end
