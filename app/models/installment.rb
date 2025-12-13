# frozen_string_literal: true

class Installment < ApplicationRecord
  validates :number, presence: true
  validates :number, numericality: { only_integer: true, greater_than: 0 }

  validates :due_date, presence: true

  validates :amount_in_cents, presence: true
  validates :amount_in_cents, numericality: { only_integer: true, greater_than: 0 }

  def amount
    amount_in_cents / 100.0
  end
end
