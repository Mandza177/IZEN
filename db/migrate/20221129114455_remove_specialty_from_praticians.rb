class RemoveSpecialtyFromPraticians < ActiveRecord::Migration[7.0]
  def change
    remove_column :praticians, :specialty
  end
end
