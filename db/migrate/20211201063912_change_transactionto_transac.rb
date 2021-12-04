# frozen_string_literal: true

class ChangeTransactiontoTransac < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    rename_table :transactions, :transacs
  end
end
