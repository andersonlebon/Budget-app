# frozen_string_literal: true

class AddTransactionToCategory < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_reference :categories, :transaction, null: false, foreign_key: true
  end
end
