class AddPhoneNumberToPraticians < ActiveRecord::Migration[7.0]
  def change
    add_column :praticians, :phone_number, :string
  end
end
