# frozen_string_literal: true

class Book < ApplicationRecord
  # presentce(присутствие) обязательно
  validates :title, presence: true

  belongs_to :group
  has_and_belongs_to_many :authors
end
