# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    create_table :categories, &:timestamps
  end
end
