# frozen_string_literal: true

class Buyer < ApplicationRecord
  validates :name, presence: true

  validates :document_number, presence: true

  validates :kind, presence: true

  enum :kind, { cpf: 'CPF', cnpj: 'CNPJ' }

  with_options if: :cpf? do
    validates :document_number, length: { is: 11 }
  end

  with_options if: :cnpj? do
    validates :document_number, length: { is: 14 }
  end
end
