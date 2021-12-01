# frozen_string_literal: true

class AddCategoryToTransaction < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_reference :transactions, :category, null: false, foreign_key: true
  end
end
