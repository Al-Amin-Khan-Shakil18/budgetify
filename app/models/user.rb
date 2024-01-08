class User < ApplicationRecord
  has_many :expenses
  has_many :payments, foreign_key: 'author_id'

  validates :name, presence: true
end
