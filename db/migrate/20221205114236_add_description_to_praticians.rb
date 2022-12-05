class AddDescriptionToPraticians < ActiveRecord::Migration[7.0]
  def change
    add_column :praticians, :description, :string
  end
end
