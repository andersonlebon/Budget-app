class Transaction < ApplicationRecord
    belongs_to :user
    belongs_to :category
    
    validates :amount, presence: true
    end
    has_many :categories, dependent: :destroy

end
