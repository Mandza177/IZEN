class Favorite < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :pratician
end
