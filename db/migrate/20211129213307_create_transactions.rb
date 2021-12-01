# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    create_table :transactions, &:timestamps
  end
end
