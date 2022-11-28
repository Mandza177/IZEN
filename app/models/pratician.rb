class Pratician < ApplicationRecord
  has_many :users, through: :symptoms

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job, presence: true
  validates :specialty, presence: true
  validates :email, uniqueness: true
end
