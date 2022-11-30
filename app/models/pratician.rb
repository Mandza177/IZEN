class Pratician < ApplicationRecord
  has_many :users, through: :favorites
  has_one :symptom
  

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job, presence: true
  validates :email, uniqueness: true

  has_one_attached :photo
end
