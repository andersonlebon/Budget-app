# frozen_string_literal: true

class AddColumnsToCategory < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_column :categories, :name, :string
    add_column :categories, :icon, :string
  end
end
