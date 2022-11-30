class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :praticians, through: :favorites
  has_one :symptom

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  has_one_attached :photo
end
