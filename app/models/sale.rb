class Sale < ApplicationRecord
  belongs_to :client
  has_many :items
  has_many :installments
  belongs_to :discount, optional: true
  enum status: [:pending, :paid]
end
