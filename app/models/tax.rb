# frozen_string_literal: true

class Tax < ApplicationRecord
  INDEXES = {
    real: 'REAL',
    incc: 'INCC',
    ipca: 'IPCA',
    igpm: 'IGPM'
  }.freeze

  validates :pre_index, presence: true
  validates :pre_index, length: { maximum: 10 }
  validates :total_pre_interest, numericality: {
    greater_than_or_equal_to: 0
  }

  validates :pos_index, presence: true
  validates :pos_index, length: { maximum: 10 }
  validates :total_pos_interest, numericality: {
    greater_than_or_equal_to: 0
  }

  validates :mora_interest, presence: true
  validates :mora_interest, numericality: {
    greater_than_or_equal_to: 0
  }

  validates :compensatory_fee, presence: true
  validates :compensatory_fee, numericality: {
    greater_than_or_equal_to: 0
  }

  enum :pre_index, INDEXES
  enum :pos_index, INDEXES
end
