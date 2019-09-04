class Team < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :players
  has_one :manager
end
