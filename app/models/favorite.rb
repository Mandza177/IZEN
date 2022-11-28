class Favorite < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :praticians
end
