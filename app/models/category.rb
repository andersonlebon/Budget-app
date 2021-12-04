class Category < ApplicationRecord
  belongs_to :user
  has_many :transacs, dependent: :destroy
  validates :name, :icon, presence: true
end
