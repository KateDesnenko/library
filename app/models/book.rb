# frozen_string_literal: true

class Book < ApplicationRecord
  # presentce(присутствие) обязательно
  validates :title, presence: true

  belongs_to :group
end
