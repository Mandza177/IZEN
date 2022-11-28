class CreatePraticians < ActiveRecord::Migration[7.0]
  def change
    create_table :praticians do |t|
      t.string :first_name
      t.string :last_name
      t.string :job
      t.string :specialty
      t.string :email
      t.string :address
      t.integer :phone_number
      t.integer :rank

      t.timestamps
    end
  end
end
