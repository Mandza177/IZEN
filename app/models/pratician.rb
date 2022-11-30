class Pratician < ApplicationRecord
  has_many :users, through: :favorites
  has_one :symptom

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job, presence: true
  validates :email, uniqueness: true

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_pratician_and_symptom,
  against: [ :first_name, :last_name, :job, :address ],
  associated_against: {
    symptom: [:description]
  },
  using: {
    tsearch: { prefix: true }
  }
end
