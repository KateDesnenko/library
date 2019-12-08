# frozen_string_literal: true

class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      # ограничение на уробне БД на поле name
      t.string :name, null: false
      t.text :bio

      t.timestamps
    end
  end
end
