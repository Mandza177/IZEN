class CorectionTable < ActiveRecord::Migration[7.0]
  def change
    remove_reference :symptoms, :user, index: true, foreign_key: true
    remove_reference :symptoms, :pratician, index: true, foreign_key: true
    add_reference :users, :symptom, foreign_key: true
    add_reference :praticians, :symptom, foreign_key: true
  end
end
