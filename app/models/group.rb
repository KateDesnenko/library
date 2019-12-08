# frozen_string_literal: true

class Group < ApplicationRecord
  validates :name, presence: true

  # множественное число книг
  has_many :books
end
