class Player < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :number, presence: true

  belongs_to :team
end
