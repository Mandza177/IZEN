class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :pratician

  validates :user_id, presence: true
  validates :pratician_id, presence: true
  validates_uniqueness_of :pratician_id, scope: :user_id

  def self.like_method(pratician, user)
    Like.find_by(pratician_id: pratician.id, user_id: user.id)
  end
end

