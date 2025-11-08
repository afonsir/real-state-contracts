# frozen_string_literal: true

class Buyer < ApplicationRecord
  validates :name, presence: true

  validates :document_number, presence: true
  validates :document_number, length: { maximum: 14 }

  validates :kind, presence: true
  validates :kind, length: { maximum: 4 }
end
