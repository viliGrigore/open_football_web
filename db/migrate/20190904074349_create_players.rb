# frozen_string_literal: true

# This is a comment
class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end
