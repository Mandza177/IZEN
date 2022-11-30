class Symptom < ApplicationRecord
  SYMPTOMS = ["Sommeil", "Peur", "Douleur", "Fatigue", "Poids", "Digestion", "Alimentation", "Stress", "Colère", "Deuil", "Tabac"]
  has_many :users
  has_many :praticians

  validates :description, presence: true, inclusion: { in: SYMPTOMS }
end
