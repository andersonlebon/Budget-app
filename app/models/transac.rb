class Transac < ApplicationRecord
  belongs_to :category
  validates :amount, presence: true
end
