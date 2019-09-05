# frozen_string_literal: true

class Team < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :players
  has_one :manager

  accepts_nested_attributes_for :players
  accepts_nested_attributes_for :manager
end
