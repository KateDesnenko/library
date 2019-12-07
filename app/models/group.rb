# frozen_string_literal: true

class Group < ApplicationRecord
  validates :name, presence: true

  has_many :books
end
