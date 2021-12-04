# frozen_string_literal: true

class AddCategoryToTransac < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_reference :transacs, :category, null: false, foreign_key: true
  end
end
