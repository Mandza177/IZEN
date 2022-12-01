class RemovePhoneNumberFromPraticians < ActiveRecord::Migration[7.0]
  def change
    remove_column :praticians, :phone_number
  end
end
