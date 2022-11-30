class AddPraticianReferenceToSymptoms < ActiveRecord::Migration[7.0]
  def change
    add_reference :symptoms, :pratician, foreign_key: true
  end
end
