# frozen_string_literal: true

class Author < ApplicationRecord
  validates :name, presence: true

  # книги во множ числе
  has_and_belongs_to_many :books
end
