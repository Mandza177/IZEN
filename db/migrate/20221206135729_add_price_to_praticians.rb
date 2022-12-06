class AddPriceToPraticians < ActiveRecord::Migration[7.0]
  def change
    add_column :praticians, :price, :integer
  end
end
