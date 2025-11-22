# frozen_string_literal: true

class Address < ApplicationRecord
  validates :uf, presence: true
  validates :uf, length: { is: 2 }

  validates :municipality, presence: true
  validates :street, presence: true
  validates :number, presence: true
  validates :neighborhood, presence: true

  validates :zipcode, presence: true
  validates :zipcode, length: { is: 8 }
end
