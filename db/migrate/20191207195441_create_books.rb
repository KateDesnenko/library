# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :year
      t.integer :pages
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
