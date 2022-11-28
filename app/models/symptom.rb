class Symptom < ApplicationRecord
  belongs_to :user
  has_many :praticians

  validates :description, presence: true
end
