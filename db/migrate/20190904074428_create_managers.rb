# frozen_string_literal: true

# This creates managers
class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :name
      t.integer :age
      t.belongs_to :team, foreign_key: true

      t.timestamps
    end
  end
end
