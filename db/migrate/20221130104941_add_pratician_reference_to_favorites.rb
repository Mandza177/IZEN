class AddPraticianReferenceToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_reference :favorites, :pratician, foreign_key: true
  end
end
