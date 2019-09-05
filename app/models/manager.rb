# frozen_string_literal: true

class Manager < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :age

  belongs_to :team
end
