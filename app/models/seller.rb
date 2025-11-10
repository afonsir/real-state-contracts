# frozen_string_literal: true

class Seller < ApplicationRecord
  validates :name, presence: true

  validates :document_number, presence: true
  validates :document_number, length: { in: 11..14 }

  validates :kind, presence: true
  validates :kind, length: { in: 3..4 }
end
