# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :amount, presence: true
  has_many :categories, dependent: :destroy
end
