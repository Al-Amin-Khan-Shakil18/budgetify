class Payment < ApplicationRecord
  belongs_to :user
  has_many :allocations
  has_many :expenses, through: :allocations

  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
