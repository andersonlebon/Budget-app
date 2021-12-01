# frozen_string_literal: true

class AddUserToCategory < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_reference :categories, :user, null: false, foreign_key: true
  end
end
